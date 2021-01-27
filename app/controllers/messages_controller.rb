class MessagesController < ApplicationController
  before_action :set_message, only: [:update, :destroy]

  # to get the list of contact saved in db
  def index
    @messages = Message.all

    render json: @messages
  end


 # to save contact form in db
  def create
    @message = Message.new(message_params)

    if @message.save
      ContactMailer.with(message: @message).new_contact_email.deliver_now
      render json: @message, status: :created, location: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  private
    def set_message
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:first_name, :last_name, :email, :phone, :body)
    end
end
