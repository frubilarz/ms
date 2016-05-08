class ArticulosController < ApplicationController
    before_action :set_articulo, only: [:show, :edit, :update, :destroy]

    def index
      @articulos = Articulo.all
    end

    # GET articulos/id
    def show
    end

    def new
      @articulo = Articulo.new
    end

    def create
      @articulo = Articulo.new(articulo_params)
      respond_to do |format|
        if @articulo.save
          format.html{redirect_to @articulo, notice: 'Fue creado un Articulo con Exito.'}
        else
          forma.html{render :new}
        end
      end

    end

    def edit
    end

    def update
      respond_to do |format|
        if @articulo.update(articulo_params)
          format.html{redirect_to @articulo, notice: "Articulo fue editado con exito"}
        else
          format.html{render :edit}
        end
      end
    end


    def destroy
      @articulo.destroy
      respond_to do |format|
        format.html{ redirect_to articulos_url, notice: 'Articulo eliminado con Exito.' }
      end
    end



  private

    def set_articulo
      @articulo = Articulo.find(params[:id])
    end

    def articulo_params
      params.require(:articulo).permit(:nombre,:descripcion,:stock,:precio_compra,:precio_compra)
    end

end
