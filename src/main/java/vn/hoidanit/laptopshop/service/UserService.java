package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> handleGetAllUser() {
        List<User> arrUsers = this.userRepository.findAll();
        return arrUsers;
    }

    public User handleGetUserById(long id) {
        User user = this.userRepository.findById(id);
        return user;
    }

    public List<User> handleGetUserByEmail(String email) {
        List<User> arrUsers = this.userRepository.findByEmail(email);
        return arrUsers;
    }

    public User handleSaveUser(User user) {
        User thang = this.userRepository.save(user);
        return thang;
    }

    public void handleDeleteUser(long id) {
        this.userRepository.deleteById(id);
    }
}
