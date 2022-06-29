namespace CRUD.DatabaseAccess
{
    public interface IDataAccess
    {
        Task Save<T>(string procedureName, T parameters, string defaultConnection = "Default");

        Task<IEnumerable<T>> Load<T, U>(string procedureName, U parameters, string defaultConnection = "Default");
    }
}
