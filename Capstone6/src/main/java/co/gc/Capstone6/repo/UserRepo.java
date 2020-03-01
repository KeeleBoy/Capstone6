package co.gc.Capstone6.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import co.gc.Capstone6.entity.User;

public interface UserRepo extends JpaRepository<User, Long> {

	User findByUsernameIgnoreCase(String username);

}
