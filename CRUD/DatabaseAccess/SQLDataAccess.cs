using System.Data.SqlClient;
using System.Data;
using Dapper;

namespace CRUD.DatabaseAccess
{
    public class SQLDataAccess : IDataAccess
    {
        private readonly IConfiguration _config;

        public SQLDataAccess(IConfiguration config)
        {
            _config = config;
        }

        public async Task<IEnumerable<T>> Load<T, U>(string storedProcedure, U parameters, string databaseConnection = "Default")
        {
            using IDbConnection dbConnection = new SqlConnection(_config.GetConnectionString(databaseConnection));

            var result = await dbConnection.QueryAsync<T>(storedProcedure, parameters, commandType: CommandType.StoredProcedure);

            return result;
        }

        public async Task Save<T>(string storedProcedure, T parameters, string databaseConnection = "Default")
        {
            using IDbConnection dbConnection = new SqlConnection(_config.GetConnectionString(databaseConnection));

            await dbConnection.ExecuteAsync(storedProcedure, parameters, commandType: CommandType.StoredProcedure);
        }
    }
}
