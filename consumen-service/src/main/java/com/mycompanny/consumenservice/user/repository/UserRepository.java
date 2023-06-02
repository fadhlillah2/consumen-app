package com.mycompanny.consumenservice.user.repository;

import com.mycompanny.consumenservice.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepository extends CrudRepository<User, Integer>, JpaRepository<User, Integer> {
    public Long countById(Integer id);

    public List<User> findByNameContains(String keyWord);
}
