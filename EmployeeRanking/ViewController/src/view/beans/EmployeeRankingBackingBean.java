package view.beans;

import javax.el.ELContext;

import javax.el.ExpressionFactory;

import javax.el.MethodExpression;

import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.faces.event.ValueChangeEvent;

import oracle.adf.view.rich.component.rich.input.RichSelectOneChoice;
import oracle.adf.view.rich.context.AdfFacesContext;

public class EmployeeRankingBackingBean {
    private RichSelectOneChoice rank;
    private RichSelectOneChoice employee;

    public EmployeeRankingBackingBean() {
        }

    public void setRank(RichSelectOneChoice rank) {
        this.rank = rank;
    }

    public RichSelectOneChoice getRank() {
        return rank;
    }

    public void setEmployee(RichSelectOneChoice employee) {
        this.employee = employee;
    }

    public RichSelectOneChoice getEmployee() {
        return employee;
    }


    public void employeeValueChangeListener(ValueChangeEvent valueChangeEvent) {
       this.employee.setReadOnly(true);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.employee);
    }
    
    public void rankValueChangeListener(ValueChangeEvent valueChangeEvent) {
        this.rank.setReadOnly(true);
        AdfFacesContext.getCurrentInstance().addPartialTarget(this.rank);
    }

    public void createEmployeeRank(ActionEvent actionEvent) {
        this.rank.setReadOnly(false);
        this.employee.setReadOnly(false);
       this.invokeEL("#{bindings.CreateInsert.execute}");
    }
                  
    

    public static Object invokeEL(String el) {
        return invokeEL(el, new Class[0], new Object[0]);
    }
    public static Object invokeEL(String el, Class[] paramTypes, Object[] params) {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        ELContext elContext = facesContext.getELContext();
        ExpressionFactory expressionFactory = facesContext.getApplication().getExpressionFactory();
        MethodExpression exp = expressionFactory.createMethodExpression(elContext, el, Object.class, paramTypes);

        return exp.invoke(elContext, params);
    }

   
}
