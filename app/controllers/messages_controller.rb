class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
  end

  # 以下のアクションを追加
  private

  def message_params
    params.require(:message).permit(:title, :content)
  end
end
