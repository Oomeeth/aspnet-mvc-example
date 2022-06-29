using CRUD.DatabaseAccess;
using CRUD.Models;

namespace CRUD.Repository
{
    public class UserRepository : IUserRepository
    {
        private readonly IDataAccess _dataAccess;

        public UserRepository(IDataAccess dataAccess)
        {
            _dataAccess = dataAccess;
        }

        public async Task<UserModel?> GetUser(int id)
        {
            var result = await _dataAccess.Load<UserModel, dynamic>("GetUser", new { Id = id });

            return result.FirstOrDefault();
        }

        public Task CreateUser(UserModel userModel)
        {
            return _dataAccess.Save("CreateUser", new
            {
                FirstName = userModel.FirstName,
                LastName = userModel.LastName,
                Phone = userModel.Phone,
                Email = userModel.Email,
                UserAddress = userModel.UserAddress,
                UserDOB = userModel.UserDOB,
                UserPassword = userModel.UserPassword,
                AccountType = userModel.AccountType,
            });
        }
    }
}
