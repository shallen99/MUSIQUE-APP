class ProducersController < ApplicationController
    #Producers Routings

    ## get all producers
    get "/producers" do
        producers = Producer.all
        producers.to_json()
     end

     ## get one producer
    get "/producers/:id" do
        producer = Producer.find_by(id: params[:id])
        producer.to_json()
    end
end