package org.jsp.userproductapp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.jsp.userproductapp.dto.User;

public class UserDao {
	EntityManager manager = Persistence.createEntityManagerFactory("dev").createEntityManager();

	public User saveUser(User user) {
		manager.persist(user);
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		transaction.commit();
		return user;
	}

	public User updateUser(User user) {
		manager.merge(user);
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		transaction.commit();
		return user;
	}

	public User findUserById(int id) {
		return manager.find(User.class, id);
	}

	public User verifyUser(long phone, String password) {
		Query q = manager.createQuery("select u from User u where u.phone=?1 and password=?2");
		q.setParameter(1, phone);
		q.setParameter(2, password);
		try {
			return (User) q.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

	public boolean deleteUser(int id) {
		User u = findUserById(id);
		if (u != null) {
			EntityTransaction transaction = manager.getTransaction();
			transaction.begin();
			manager.remove(u);
			transaction.commit();
			return true;
		}
		return false;
	}
}
