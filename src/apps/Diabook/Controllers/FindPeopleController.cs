using System;
using System.Collections.Generic;
using System.Web.Http;
using Diabook.Models;
using Neo4jClient;
using Newtonsoft.Json.Linq;

namespace Diabook.Controllers
{

    public class FindPeopleController : ApiController
    {
        // POST api/values
        [Route("api/person/{name}/GetFriendList")]
        public IEnumerable<Person> Get(string name)
        {
            var client = new GraphClient(new Uri("http://diabook:password1@localhost:7474/db/data"));
            client.Connect();
            var query = client.Cypher
                .Match("(user:Person)-[FRIENDS_WITH]-(friend:Person)")
                .Where((Person user) => user.Name == name)
                .Return(friend => friend.As<Person>());

            var queryText = query.Query.QueryText;
            var queryParams = query.Query.QueryParameters;
            return query.Results;
        }


        // POST api/values
        [Route("api/person/{name}/FindType1/{degreeOfSeparation}")]
        public IEnumerable<Person> Get(string name, int degreeOfSeparation)
        {
            var client = new GraphClient(new Uri("http://diabook:password1@localhost:7474/db/data"));
            client.Connect();
            var query = client.Cypher
                .Match(string.Format("(user:Person)-[:FRIENDS_WITH*{0}]->(fof)-[:DIAGNOSED_WITH]->(disease)", degreeOfSeparation))
                .Where((Person user) => user.Name == name)
                .Return(fof => fof.As<Person>());

            var queryText = query.Query.QueryText;
            var queryParams = query.Query.QueryParameters;
            return query.Results;
        }
    }
}
