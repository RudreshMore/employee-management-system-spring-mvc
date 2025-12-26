package in.rudresh.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer empId;

    @NotBlank(message = "Employee name is required")
    private String empName;

    @NotNull(message = "Phone number is required")
    @Pattern(regexp = "^[6-9][0-9]{9}$", message = "Invalid Indian phone number")
    @Column(name = "phone_number", unique = true, nullable = false, length = 10)
    private String pno;

    @NotNull(message = "Age is required")
    @Min(value = 18, message = "Age must be at least 18")
    private Integer empAge;

    @NotNull(message = "Salary is required")
    @DecimalMin(value = "1.0", message = "Salary must be greater than 0")
    private Double empSalary;
}
