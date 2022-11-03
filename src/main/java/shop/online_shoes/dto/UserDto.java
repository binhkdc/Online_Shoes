package shop.online_shoes.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
@Data
@NoArgsConstructor
public class UserDto {
    Long id;
    String fullName;
    String address;
    String email;
    String password;
    String rePassword;
    String role;
    int status;
    MultipartFile fileImage;
}
