package com.jailsonmc.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.jailsonmc.backend.models.HelloWorld;

public interface HelloWorldRepository extends JpaRepository<HelloWorld, Long>{

}
