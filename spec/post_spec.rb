describe 'cadastro' do

    context "when new user" do
        before do
            @new_user = {full_name: "Fernando Papito", email: "eu@papito.io", password: 'jarvis123'}
            Database.new.delete_user("me@papito.io")

            @result = HttParty.post(
                "http://192.168.99.100/user",
                body: @new_user.to_json,
                headers: {
                     'Content-Type' => 'application/json',
                }, 
             )
        end
        it{expect(@result.response.code).to eql "200"}
    end
end

   