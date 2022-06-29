using CRUD.Models;

namespace CRUD.Repository
{
    public interface IUserRepository
    {
        Task<UserModel?> GetUser(int id);

        Task CreateUser(UserModel user);
    }
}
