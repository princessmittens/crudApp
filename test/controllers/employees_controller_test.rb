require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { departmentNumber_94: @employee.departmentNumber_94, employeeNumber_94: @employee.employeeNumber_94, firstName_94: @employee.firstName_94, lastName_94: @employee.lastName_94, position_94: @employee.position_94, salary_94: @employee.salary_94, startDate_94: @employee.startDate_94 } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { departmentNumber_94: @employee.departmentNumber_94, employeeNumber_94: @employee.employeeNumber_94, firstName_94: @employee.firstName_94, lastName_94: @employee.lastName_94, position_94: @employee.position_94, salary_94: @employee.salary_94, startDate_94: @employee.startDate_94 } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
