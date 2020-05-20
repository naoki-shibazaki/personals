class PersonDetailsController < ApplicationController

    # 登録処理
    def create
        @person = Person.find(params[:person_id])
        pd = @person.person_details.new(details_params)
        pd.user_id = current_user.id
        if pd.save
            flash[:success] = "とうろくしました"
        else
            flash[:success] = "とうろくしっぱい"
        end
        redirect_to person_path(@person)
    end

    # 削除
    def destroy
        @person = Person.find(params[:person_id])
        @detail = @person.person_details.find(params[:id])
        @detail.destroy
        redirect_to person_path(@person)
    end

    private
        def details_params
            params.require(:person_detail).permit(:category, :content)
        end
end
