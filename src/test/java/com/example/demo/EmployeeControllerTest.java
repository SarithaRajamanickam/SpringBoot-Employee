/*package com.example.demo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.verify;

import java.util.Arrays;

import static org.assertj.core.api.Assertions.assertThat;
import com.example.demo.EmployeeController;
import com.example.demo.Employee;

@RunWith(MockitoJUnitRunner.class)
public class EmployeeControllerTest {

    private static final int CHARACTER_ID = 1;
    private static final Employee EXISTING_CHARACTER = new EmployeeBuilder().id(CHARACTER_ID).empname("Micky").designation("tranee").email("kgfsl").phone("1000").address("xyz").build();
    private static final Employee ANOTHER_CHARACTER = new EmployeeBuilder().id(2).empname("Minny").build();
    private static final Employee NEW_CHARACTER = new EmployeeBuilder().empname("Micky").designation("tranee").email("kgfsl").phone("1000").address("xyz").build();

    @InjectMocks
    private EmployeeController employeeController;
    @Mock
    private EmployeeRepository employeeRepository;

    @Test
    public void whenCreatingCharacterItShouldReturnTheSavedCharacter() {
        given(employeeRepository.saveAndFlush(NEW_CHARACTER)).willReturn((EXISTING_CHARACTER));
        assertThat(employeeController.addItem((NEW_CHARACTER))).isSameAs(EXISTING_CHARACTER);
    }

    @Test
    public void whenUpdatingCharacterItShouldReturnTheSavedCharacter() {
        given(employeeRepository.getOne(CHARACTER_ID)).willReturn(EXISTING_CHARACTER);
        given(employeeRepository.saveAndFlush(EXISTING_CHARACTER)).willReturn(EXISTING_CHARACTER);
        assertThat(employeeController.updateemployee( EXISTING_CHARACTER,CHARACTER_ID)).isSameAs(EXISTING_CHARACTER);
    }

    @Test
    public void whenReadingdingCharacterItShouldReturnAllCharacters() {
        given(employeeRepository.findAll()).willReturn(Arrays.asList(EXISTING_CHARACTER, ANOTHER_CHARACTER));
        assertThat(employeeController.findItems()).containsOnly(EXISTING_CHARACTER, ANOTHER_CHARACTER);
    }

    @Test
    public void whenDeletingACharacterItShouldUseTheRepository() {
    employeeController.deleteItem(CHARACTER_ID);
        verify(employeeRepository).delete(CHARACTER_ID);
    }

}*/