package com.alan.mvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alan.mvc.models.Expense;
import com.alan.mvc.services.ExpenseService;



@Controller
public class MainController {
//	----------------DEPENDENCY INJECTION----------------
	private final ExpenseService expenseService;
	
	public MainController(ExpenseService expenseService) {
		this.expenseService = expenseService;
	}
//  -------------------------------------------------
	@RequestMapping("/")
	public String index(Model model, @ModelAttribute("expense") Expense expense) {
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("expenses", expenses);
		return "index.jsp";
	}
	
	 @RequestMapping(value="/newExpense", method=RequestMethod.POST)
	    public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
	        if (result.hasErrors()) {
	            return "index.jsp";
	        } else {
	            expenseService.createExpense(expense);
	            return "redirect:/";
	        }
	    }
	 
	 @RequestMapping("/{id}/edit")
	 public String edit(@PathVariable("id") Long id, Model model) {
		 Expense expense = expenseService.findExpense(id);
		 model.addAttribute("expense", expense);
		 return "editOne.jsp";
	 }
	 @RequestMapping(value="/{id}", method=RequestMethod.PUT )
	 public String update(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		 if(result.hasErrors()) {
			 return "editOne.jsp";
		 }else {
			 expenseService.updateExpense(expense);
			 return "redirect:/";
		 }
	 }
	 @RequestMapping(value="/{id}/delete", method=RequestMethod.DELETE)
	 public String delete(@PathVariable("id") Long id) {
		 expenseService.deleteExpense(id);
		 return "redirect:/";
	 }
	 
	 @RequestMapping("/{id}/showOne")
	 public String show(@PathVariable("id") Long id, Model model) {
		 Expense expense = expenseService.findExpense(id);
		 model.addAttribute("expense",expense);
		 return "showOne.jsp";
		 
	 }
	 
}
