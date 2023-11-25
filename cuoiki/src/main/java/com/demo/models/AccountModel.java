package com.demo.models;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.mindrot.jbcrypt.BCrypt;

import com.demo.entities.Account;
import com.demo.entities.Accountdetails;

public class AccountModel {
	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	public List<Account> findAll(){
		List<Account> accounts = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			accounts = session.createQuery("from Account").getResultList();
		
			transaction.commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			accounts = null;
		
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		
		return accounts;
	}
	
	public Account findAccountByUsername(String username) {
		Account account = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			account = (Account) session.createQuery("from Account where username = :username")
					.setParameter("username", username)
					.getSingleResult();
		
			transaction.commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			account = null;
		
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		
		return account;
	}
	public static void main(String[] args) {
		
	}
	
	public boolean login(String username, String password) {
		Account account = findAccountByUsername(username);
		if(account != null) {
			if(account.isStatus() && account.isVerify()) {
				return BCrypt.checkpw(password, account.getPassword());
			}
			
		}
		return false;
	} 
	public boolean register(Account account) {
		boolean status = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.save(account);
		
			transaction.commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			status = false;
		
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		
		return status;
	}
	public boolean update(Account account) {
		boolean status = true;
		Session session = null;
		Transaction transaction = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.update(account);
		
			transaction.commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			status = false;
		
			if(transaction != null) {
				transaction.rollback();
			}
		} finally {
			if(session != null) {
				session.close();
			}
		}
		
		return status;
	}

	
	
}