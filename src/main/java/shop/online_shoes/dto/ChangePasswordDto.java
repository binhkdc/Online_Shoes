package shop.online_shoes.dto;

import lombok.Data;

@Data
public class ChangePasswordDto {
    String oldPassword;
    String password;
    String rePassword;
    String token;
    String email;
}
