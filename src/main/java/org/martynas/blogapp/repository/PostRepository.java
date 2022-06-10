package org.martynas.blogapp.repository;

import java.util.Collection;
import java.util.Optional;

import org.martynas.blogapp.model.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostRepository extends JpaRepository<Post, Long> {

    Collection<Post> findAllByOrderByCreationDateDesc();

    Optional<Post> findById(Long id);
}
