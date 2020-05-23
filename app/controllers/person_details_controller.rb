class PersonDetailsController < ApplicationController

    # 登録処理
    def create
        @person = Person.find(params[:person_id])
        pd = @person.person_details.new(details_params)
        pd.user_id = current_user.id
        if pd.save
            modal_params = {
                modal_type: 'show',
                modal_no: params[:person_id]
            }
            respond_to do |format| 
                format.html { 
                    redirect_to person_search_url(modal_params)
                }
                format.js {  flash[:success] = '登録完了' }
            end
        else
            person_search_url
        end
        
    end

    # 削除
    def destroy
        @person = Person.find(params[:person_id])
        @detail = @person.person_details.find(params[:id])
        @detail.destroy
        modal_params = {
            modal_type: 'show',
            modal_no: params[:person_id]
        }
        respond_to do |format| 
            format.html { redirect_to person_search_url(modal_params) }
        end
    end

    private
        def details_params
            params.require(:person_detail).permit(:category, :content)
        end
end
