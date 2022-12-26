# frozen_string_literal: true

# Main controller
class PalindromsController < ApplicationController
    def index; end
  
    def result
      @flag = false
      @number = params.permit(:num)
      @palindrom = Palindrom.new(@number)
      @hash, @flag = @palindrom.print_res(@flag)
    end
  
    def check_data_xml
      render xml: Palindrom.all
    end
    
  end