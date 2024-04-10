/*
Contains logic to fetch therapist list from various sources
server or local DB is available, the service also updated the repository
after fetching the data

TherapistService is injected into any view-model (bloc,cubit, mobx store etc)
where List<TherapistModel> is needed, and it provides List<TherapistModel> from
the TherapistRepository.

TherapistService is also contains functions to send requests through the ApiProvider
such as, add therapist to favourite, filter therapist list, etc
*/

class TherapistService {}
