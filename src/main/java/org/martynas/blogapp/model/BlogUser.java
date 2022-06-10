package org.martynas.blogapp.model;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "users")
@SequenceGenerator(name = "user_seq_gen", sequenceName = "user_seq", initialValue = 10, allocationSize = 1)
public class BlogUser implements UserDetails {

    private static final int MIN_USERNAME_LENGTH = 3;
    private static final int MIN_PASSWORD_LENGTH = 8;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_seq_gen")
    @Column(name = "id")
    private Long id;

    @Length(min = MIN_USERNAME_LENGTH, message = "Username must be at least " + MIN_USERNAME_LENGTH + " characters long")
    @NotEmpty(message = "Please enter username")
    @Column(name = "username", nullable = false, unique = true)
    private String username;

    @JsonIgnore // just in case Jackson tries wants to betray us
    @Length(min = MIN_PASSWORD_LENGTH, message = "Password must be at least " + MIN_PASSWORD_LENGTH + " characters long")
    @NotEmpty(message = "Please enter the password")
    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "enabled", nullable = false)
    private Boolean enabled;

    @OneToMany(mappedBy = "user")
    private Collection<Post> posts;

    @ManyToMany(cascade = CascadeType.REMOVE)
    @JoinTable(
            name = "users_authorities",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "authority_id")
    )
    private Collection<Authority> authorities;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Collection<Post> getPosts() {
		return posts;
	}

	public void setPosts(Collection<Post> posts) {
		this.posts = posts;
	}

	public Collection<Authority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(Collection<Authority> authorities) {
		this.authorities = authorities;
	}

	public static int getMinUsernameLength() {
		return MIN_USERNAME_LENGTH;
	}

	public static int getMinPasswordLength() {
		return MIN_PASSWORD_LENGTH;
	}

	//@Override
	public boolean isAccountNonExpired() {
		return false;
	}

	//@Override
	public boolean isAccountNonLocked() {
		return false;
	}

	//@Override
	public boolean isCredentialsNonExpired() {
		return false;
	}

	//@Override
	public boolean isEnabled() {
		return false;
	}
}

   