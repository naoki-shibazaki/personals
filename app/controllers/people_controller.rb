class PeopleController < ApplicationController

    # 登録画面
    def new
        @person = Person.new
        respond_to do |format| 
            format.html{ redirect_to @person, notice: 'User was successfully created.' }
            format.js {} 
        end
    end

    # 登録処理
    def create
        @person = Person.new(person_params)
        if @person.save
            respond_to do |format|
                format.html { redirect_to @person }
                format.js {  flash[:success] = '登録完了'}
                redirect_to person_search_url
            end
        else
            flash.now[:danger] = 'なにかがダメでした'
            render :new
        end
    end

    # 参照画面
    def show
        @person = Person.find(params[:id])
        respond_to do |format| 
            format.html{ redirect_to @person, notice: 'User was successfully created.' }
            format.js {} 
        end
    end

    # 編集画面
    def edit
        @person = Person.find(params[:id])
        respond_to do |format| 
            format.html{ redirect_to @person, notice: 'User was successfully created.' }
            format.js {} 
        end
    end

    # 更新処理
    def update
        @person = Person.find(params[:id])
        if @person.update(person_params)
            respond_to do |format|
                format.html { redirect_to @person }
                format.js {  flash[:success] = '更新完了'}
                redirect_to person_search_url
            end
        else
            flash.now[:danger] = 'なにかがダメでした'
            render :edit
        end
    end

    # 検索画面
    def search
        @q = Person.with_keywords(params.dig(:q, :keywords)).ransack(params[:q])
        if params[:modal_no].present?
            @modal_params = {
                params[:modal_type] => params[:modal_no]
            }
        end
        if params[:q].present?
            @people = @q.result
        else
            @people = Person.all
        end
    end

    # 削除処理
    def destroy
        @people = Person.find(params[:id])
        @people.destroy
        redirect_to person_search_path
    end


    private

    def person_params
        params.require(:person).permit(:last_name, :first_name)
    end
end
