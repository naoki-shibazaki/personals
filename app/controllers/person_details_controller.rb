class PersonDetailsController < ApplicationController

    # 登録処理
    def create
        @person = Person.find(params[:person_id])
        @detail = @person.person_details.build(details_params)
        @detail.user_id = current_user.id
        if @detail.save
            flash[:success] = "とうろくしました"
        else
            flash[:success] = "とうろくしっぱい"
        end
        redirect_to person_path(@person)
    end

    private
        def details_params
            params.require(:person_detail).permit(:category, :content)
        end
end
