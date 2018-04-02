class ChainsController < ApplicationController

    def index
      @streak = Streak.find_by_id(params[:id])
      chains = @streak.chains
      @data = []
      @data << {"name": "current", "data": "#{@streak.frequency}"}

      chains.each do |chain|
        @data << {"name": "#{chain.chain_ended}", "data": "#{chain.consecutive_days}"}
      end
      respond_to do |format|
        format.html
      end
    end

end
