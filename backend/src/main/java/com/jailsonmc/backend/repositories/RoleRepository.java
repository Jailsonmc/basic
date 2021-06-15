package com.jailsonmc.backend.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jailsonmc.backend.models.ERole;
import com.jailsonmc.backend.models.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long>{

	Optional<Role> findByName(ERole name);
}
