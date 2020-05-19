class PeopleController < ApplicationController

    # 登録画面
    def new
        @person = Person.new
    end

    # 登録処理
    def create
        @person = Person.new(person_params)
        if @person.save
            flash[:success] = '登録完了'
            redirect_to person_search_url
        
        else
            flash.now[:alert] = 'なにかがダメでした'
            render :new
        end
    end

    # 参照画面
    def show
        @person = Person.find(params[:id])
        @details = @person.person_details
        @detail = @person.person_details.build
    end

    # 編集画面
    def edit
        @person = Person.find(params[:id])
    end

    # 更新処理
    def update
        @person = Person.find(params[:id])
        if @person.update(person_params)
            redirect_to person_search_url
        else
            flash.now[:alert] = 'なにかがダメでした'
            render :edit
        end
    end

    # 検索画面
    def search
        @q = Person.with_keywords(params.dig(:q, :keywords)).ransack(params[:q])
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
