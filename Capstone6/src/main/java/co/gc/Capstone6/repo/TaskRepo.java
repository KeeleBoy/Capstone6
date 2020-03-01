package co.gc.Capstone6.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import co.gc.Capstone6.entity.Task;

public interface TaskRepo extends JpaRepository<Task, Long> {

}
