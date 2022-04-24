class Admin::AdminsController < AdminController 
  before_action :set_admin, only: [:edit, :update, :destroy]
  
  def index
    @admins = Admin.order(id: :asc)
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(form_params)
    if @admin.save
      flash[:success] = "Administrador criado com sucesso!"
      redirect_to admin_admins_path 
    else
      flash[:error] = "Algo deu errado :( "
      render :new
    end
  end

  def edit
  end

  def update
    params = form_params.to_h 
    params = params.except!(:password, :password_confirmation) if params[:password].blank?

    if @admin.update(params)
      redirect_to admin_admins_path 
    else 
      render :edit 
    end
  end

  def destroy
    if @admin.destroy
      redirect_to admin_admins_path
    else
      flash[:error] = 'Something went wrong'
      render :edit
    end
  end
  
  
  private

  def form_params 
    params.require(:admin).permit(:name, :email, :password, :password_confirmation)
  end

  def set_admin
    @admin = Admin.find(params[:id])
  end
  
end