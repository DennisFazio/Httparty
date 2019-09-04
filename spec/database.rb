require "pg"

class Database
    def initialize
        conn = {host: '192.168.1.1', dbname:'XXX', user:'sa', password: 'sa'}
        @connection = PG.connect(conn)
    end
    
    def delete_user(email)
        @connection.exec("delete from xxx where aaa = #{email}" )
    end
    
end