class MachinesController < ApplicationController
  def create
    @customer = Customer.find(params[:customer_id])
    @machine  = @customer.machines.create(machine_params)
    redirect_to customer_path(@customer)
  end

  def destroy
    @customer = Customer.find(params[:customer_id])
    @machine = @customer.machines.find(params[:id])
    @machine.destroy
    redirect_to customer_path(@customer)
    
  end
  
  private
    def machine_params
      params.require(:machine).permit(:name, :model_number, :model_series,:employee_id,:status)
    end
end
