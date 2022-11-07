package shop.online_shoes.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class PaginationDto {
    int prePage;
    int nextPage;
    int activePage;
    int page;
    int pageSize;
    int count;
}
