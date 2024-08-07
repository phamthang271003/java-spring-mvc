package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.Role;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.domain.dto.LoginDTO;
import vn.hoidanit.laptopshop.domain.dto.RegisterDTO;
import vn.hoidanit.laptopshop.repository.OrderRepository;
import vn.hoidanit.laptopshop.repository.ProductRepository;
import vn.hoidanit.laptopshop.repository.RoleRepository;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final ProductRepository productRepository;
    private final OrderRepository orderRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository,
            ProductRepository productRepository, OrderRepository orderRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.orderRepository = orderRepository;
        this.productRepository = productRepository;
    }

    public Page<User> handleGetAllUser(Pageable pageable) {
        Page<User> arrUsers = this.userRepository.findAll(pageable);
        return arrUsers;
    }

    public User handleGetUserById(long id) {
        User user = this.userRepository.findById(id);
        return user;
    }

    public List<User> handleGetUserByEmail(String email) {
        List<User> arrUsers = this.userRepository.findOneByEmail(email);
        return arrUsers;
    }

    public User handleSaveUser(User user) {
        User thang = this.userRepository.save(user);
        return thang;
    }

    public void handleDeleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role handleGetRoleByName(String name) {

        return this.roleRepository.findByName(name);
    }

    // Mapper
    public User registerDTOToUser(RegisterDTO registerDTO) {
        User user = new User();
        user.setFullName(registerDTO.getFirstName() + "" + registerDTO.getLastName());
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());
        return user;
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }

    public User loginDTOToUser(LoginDTO loginDTO) {
        User user = new User();
        user.setEmail(loginDTO.getEmail());
        user.setPassword(loginDTO.getPassword());
        return user;
    }

    public User getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public long countUsers() {
        return this.userRepository.count();
    }

    public long countProducts() {
        return this.productRepository.count();
    }

    public long countOrders() {
        return this.orderRepository.count();
    }
}
