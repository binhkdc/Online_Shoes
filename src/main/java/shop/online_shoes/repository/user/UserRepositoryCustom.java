package shop.online_shoes.repository.user;

import shop.online_shoes.dto.UserDto;


import java.util.List;

public interface UserRepositoryCustom {
    List<UserDto> findAllCusstom();
}
