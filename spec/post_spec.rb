describe 'cadastro' do
    it 'novo usuário' do

        Database.new.delete_user("me@papito.io")
        result = HttParty.post(
           "http://192.168.99.100/user",
           body: {full_name: "Fernando Papito", email: "eu@papito.io", password: 'jarvis123'}.to_json,
           headers: {
                'Content-Type' => 'application/json',
           }, 
        )
        puts result
        expect(result.response.code).to eql "200"
    end
end