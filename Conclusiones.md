# Conclusiones
1. Validación de la problemática y oportunidad de mercado: 
Las entrevistas realizadas a pasajeros y mototaxistas en ciudades intermedias (Chincha, Huaraz, Carhuaz, Villa El Salvador) confirmaron que el transporte en mototaxi enfrenta problemas críticos: regateo de precios, inseguridad, conductores imprudentes, competencia excesiva y recorridos en vacío. Ambos segmentos manifestaron interés en una solución digital como ChapaTuRuta, siempre que sea fácil de usar, segura y con comisiones accesibles.

2. Definición clara de segmentos objetivo: 
Se identificaron y caracterizaron dos segmentos diferenciados: pasajeros de 15 a 60 años que valoran la verificación de conductores y la trazabilidad; y mototaxistas formales de 20 a 50 años que buscan optimizar su tiempo, aumentar ingresos y reducir la incertidumbre. Esta segmentación permitió diseñar funcionalidades específicas para cada usuario.

3. Desarrollo completo del primer sprint: 
Durante el Sprint 1 se logró culminar toda la documentación base del proyecto: desde el perfil de la startup y el análisis de competidores hasta el diseño de la arquitectura de software, la base de datos, los wireframes, mock-ups y el prototipo de la aplicación web. Asimismo, se implementó el Landing Page y se configuró el entorno de desarrollo, control de versiones y despliegue.

4. Aplicación de metodologías ágiles y Lean UX: 
El uso de Lean UX Problem Statements, Assumptions, Hypothesis y Canvas permitió alinear al equipo en torno a hipótesis validadas con usuarios reales. El Event Storming, el Ubiquitous Language y los User Stories facilitaron una comunicación técnica clara y un diseño orientado al dominio del negocio.

5. Arquitectura de software sólida y escalable: 
Se definieron diagramas de contexto, contenedores y componentes, así como diagramas de clases y de base de datos, sentando las bases técnicas para el desarrollo futuro. Esto garantiza que ChapaTuRuta sea escalable a más ciudades intermedias tal como se plantea en la visión de la startup.

6. Producto mínimo viable (MVP) en camino: 
Con el Sprint 1 completado, el equipo cuenta con los insumos necesarios (requisitos, diseño, prototipo, despliegue inicial) para avanzar al Sprint 2, donde se desarrollarán las funcionalidades core de la plataforma: conexión en tiempo real entre pasajeros y mototaxistas, sistema de calificaciones y verificación de documentos.


# Bibliografía 
1. Dato de 1.6 millones de mototaxis registrados (MTC, 2021) y 3 millones de conductores (Federación Nacional de Mototaxistas):
https://www.infobae.com/peru/2024/09/22/nueva-ley-del-mototaxista-creara-un-registro-universal-de-los-transportistas-que-brindan-este-servicio/
2. Dato de población INEI 2024 (34 millones / 60% en ciudades +100k hab.):
https://www.infobae.com/peru/2024/07/12/peru-aumento-el-numero-de-habitantes-en-el-2024-estudio-de-inei-revela-la-nueva-cifra/
3. Ley N.° 31917 y requisitos del MTC (licencia B-IIc, SOAT, inspección técnica):
https://larepublica.pe/sociedad/2024/09/21/el-nuevo-reglamento-del-mtc-que-regira-para-el-servicio-de-mototaxi-en-peru-conoce-requisitos-y-sanciones-1765596
4. Reglamento MTC 2024 y contexto regulatorio:
https://eltiempo.pe/nacional/nuevo-reglamento-mototaxi-2024-cuales-son-los-nuevos-cambios-que-implemento-el-mtc-en-peru/

# Anexos 

## Anexo A: Diagramas de Clases por Bounded Context

### A.1 Bounded Context: IAM (Identity & Access Management)
```
@startuml
skinparam packageStyle rectangle
skinparam classAttributeIconSize 0
hide empty members

package "iam.application.facade" {
    class IamFacade <<Facade>> {
        + registerPassenger(command: IRegisterPassengerCommand): Account
        + registerDriver(command: IRegisterDriverCommand): Account
        + signIn(command: ISignInCommand): Session
        + signOut(command: ISignOutCommand): void
        + updateProfile(command: IUpdateProfileCommand): Profile
        + getAuthStatus(query: IGetAuthStatusQuery): Account
        + getCurrentSession(query: IGetCurrentSessionQuery): Session
        + getMyProfile(query: IGetMyProfileQuery): Profile
        + getDriverAccessStatus(query: IGetDriverAccessStatusQuery): Account
    }
}

package "iam.domain.model.entities" {
    enum UserRole {
        PASSENGER
        DRIVER
        ADMIN
    }

    enum AccessStatus {
        ACTIVE
        PENDING_VERIFICATION
        RESTRICTED
    }

    class Account {
        - accountId: UUID
        - email: String
        - passwordHash: String
        - role: UserRole
        - accessStatus: AccessStatus
        + activate(): void
        + markPendingVerification(): void
        + enableDriverAccess(): void
        + restrictAccess(): void
        + validateCredentials(rawPassword: String): boolean
    }

    class Profile {
        - profileId: UUID
        - accountId: UUID
        - fullName: String
        - photoUrl: String
        + updateProfile(fullName: String, photoUrl: String): void
    }

    class Session {
        - sessionId: UUID
        - accountId: UUID
        - isActive: boolean
        + start(): void
        + invalidate(): void
    }
}

package "iam.domain.model.commands" {
    interface IRegisterPassengerCommand <<Command>> {
        + getEmail(): String
        + getPassword(): String
    }

    interface IRegisterDriverCommand <<Command>> {
        + getEmail(): String
        + getPassword(): String
        + getLicenseNumber(): String
        + getSoatNumber(): String
    }

    interface ISignInCommand <<Command>> {
        + getEmail(): String
        + getPassword(): String
    }

    interface ISignOutCommand <<Command>> {
        + getSessionId(): UUID
    }

    interface IUpdateProfileCommand <<Command>> {
        + getAccountId(): UUID
        + getFullName(): String
        + getPhotoUrl(): String
    }
}

package "iam.domain.model.queries" {
    interface IGetAuthStatusQuery <<Query>> {
        + getAccountId(): UUID
    }

    interface IGetCurrentSessionQuery <<Query>> {
        + getAccountId(): UUID
    }

    interface IGetMyProfileQuery <<Query>> {
        + getAccountId(): UUID
    }

    interface IGetDriverAccessStatusQuery <<Query>> {
        + getAccountId(): UUID
    }
}

package "iam.domain.events" {
    class PassengerAccountRegisteredEvent <<DomainEvent>> {
        + accountId: UUID
        + occurredOn: DateTime
    }

    class DriverAccountRegisteredEvent <<DomainEvent>> {
        + accountId: UUID
        + occurredOn: DateTime
    }

    class DriverPendingVerificationEvent <<DomainEvent>> {
        + accountId: UUID
        + occurredOn: DateTime
    }

    class UserSignedInEvent <<DomainEvent>> {
        + sessionId: UUID
        + accountId: UUID
        + occurredOn: DateTime
    }

    class UserSignedOutEvent <<DomainEvent>> {
        + sessionId: UUID
        + occurredOn: DateTime
    }

    class ProfileUpdatedEvent <<DomainEvent>> {
        + profileId: UUID
        + occurredOn: DateTime
    }

    class DriverAccessEnabledEvent <<DomainEvent>> {
        + accountId: UUID
        + occurredOn: DateTime
    }

    class DriverAccessRestrictedEvent <<DomainEvent>> {
        + accountId: UUID
        + occurredOn: DateTime
    }
}

package "iam.domain.repositories" {
    interface IAccountRepository <<Repository>> {
        + save(account: Account): void
        + findById(accountId: UUID): Account
        + findByEmail(email: String): Account
        + existsByEmail(email: String): boolean
    }

    interface IProfileRepository <<Repository>> {
        + save(profile: Profile): void
        + findByAccountId(accountId: UUID): Profile
    }

    interface ISessionRepository <<Repository>> {
        + save(session: Session): void
        + findActiveByAccountId(accountId: UUID): Session
        + findById(sessionId: UUID): Session
    }
}

package "iam.domain.services.commandservices" {
    interface IAccountCommandService {
        + registerPassenger(command: IRegisterPassengerCommand): Account
        + registerDriver(command: IRegisterDriverCommand): Account
        + signIn(command: ISignInCommand): Session
        + signOut(command: ISignOutCommand): void
        + enableDriverAccess(accountId: UUID): void
        + restrictDriverAccess(accountId: UUID): void
    }

    interface IProfileCommandService {
        + updateProfile(command: IUpdateProfileCommand): Profile
    }
}

package "iam.domain.services.queryservices" {
    interface IAccountQueryService {
        + getAuthStatus(query: IGetAuthStatusQuery): Account
        + getCurrentSession(query: IGetCurrentSessionQuery): Session
        + getDriverAccessStatus(query: IGetDriverAccessStatusQuery): Account
    }

    interface IProfileQueryService {
        + getMyProfile(query: IGetMyProfileQuery): Profile
    }
}

package "iam.infrastructure.repositories" {
    class AccountRepositoryImpl {
        + save(account: Account): void
        + findById(accountId: UUID): Account
        + findByEmail(email: String): Account
        + existsByEmail(email: String): boolean
    }

    class ProfileRepositoryImpl {
        + save(profile: Profile): void
        + findByAccountId(accountId: UUID): Profile
    }

    class SessionRepositoryImpl {
        + save(session: Session): void
        + findActiveByAccountId(accountId: UUID): Session
        + findById(sessionId: UUID): Session
    }
}

package "iam.interfaces.rest.controllers" {
    class IamController {
        + registerPassenger(request: RegisterPassengerRequest): AccountResponse
        + registerDriver(request: RegisterDriverRequest): AccountResponse
        + signIn(request: SignInRequest): SessionResponse
        + signOut(request: SignOutRequest): void
        + updateProfile(request: UpdateProfileRequest): ProfileResponse
        + getAuthStatus(request: AuthStatusRequest): AuthStatusResponse
        + getCurrentSession(request: CurrentSessionRequest): SessionResponse
        + getMyProfile(request: MyProfileRequest): ProfileResponse
        + getDriverAccessStatus(request: DriverAccessStatusRequest): DriverAccessStatusResponse
    }
}

package "iam.interfaces.rest.resources.requests" {
    class RegisterPassengerRequest {
        + email: String
        + password: String
    }

    class RegisterDriverRequest {
        + email: String
        + password: String
        + licenseNumber: String
        + soatNumber: String
    }

    class SignInRequest {
        + email: String
        + password: String
    }

    class SignOutRequest {
        + sessionId: UUID
    }

    class UpdateProfileRequest {
        + accountId: UUID
        + fullName: String
        + photoUrl: String
    }

    class AuthStatusRequest {
        + accountId: UUID
    }

    class CurrentSessionRequest {
        + accountId: UUID
    }

    class MyProfileRequest {
        + accountId: UUID
    }

    class DriverAccessStatusRequest {
        + accountId: UUID
    }
}

package "iam.interfaces.rest.resources.responses" {
    class AccountResponse {
        + accountId: UUID
        + email: String
        + role: String
        + accessStatus: String
    }

    class ProfileResponse {
        + profileId: UUID
        + accountId: UUID
        + fullName: String
        + photoUrl: String
    }

    class AuthStatusResponse {
        + accountId: UUID
        + role: String
        + accessStatus: String
    }

    class SessionResponse {
        + sessionId: UUID
        + accountId: UUID
        + isActive: boolean
    }

    class DriverAccessStatusResponse {
        + accountId: UUID
        + accessStatus: String
    }
}

package "iam.interfaces.rest.assemblers" {
    class AccountResponseAssembler {
        + toResponse(account: Account): AccountResponse
        + toAuthStatusResponse(account: Account): AuthStatusResponse
        + toDriverAccessStatusResponse(account: Account): DriverAccessStatusResponse
    }

    class ProfileResponseAssembler {
        + toResponse(profile: Profile): ProfileResponse
    }

    class SessionResponseAssembler {
        + toResponse(session: Session): SessionResponse
    }
}

' =========================
' RELACIONES DE DOMINIO
' =========================
Account "1" -- "1" Profile : owns >
Account "1" -- "0..*" Session : opens >
Account --> UserRole
Account --> AccessStatus

' =========================
' COMMANDS / QUERIES IMPLEMENTADOS POR REQUESTS
' =========================
RegisterPassengerRequest ..|> IRegisterPassengerCommand
RegisterDriverRequest ..|> IRegisterDriverCommand
SignInRequest ..|> ISignInCommand
SignOutRequest ..|> ISignOutCommand
UpdateProfileRequest ..|> IUpdateProfileCommand

AuthStatusRequest ..|> IGetAuthStatusQuery
CurrentSessionRequest ..|> IGetCurrentSessionQuery
MyProfileRequest ..|> IGetMyProfileQuery
DriverAccessStatusRequest ..|> IGetDriverAccessStatusQuery

' =========================
' CONTROLLER / FACADE
' =========================
IamController --> IamFacade : uses
IamController --> AccountResponseAssembler : uses
IamController --> ProfileResponseAssembler : uses
IamController --> SessionResponseAssembler : uses

' =========================
' FACADE / SERVICES
' =========================
IamFacade --> IAccountCommandService : delegates
IamFacade --> IProfileCommandService : delegates
IamFacade --> IAccountQueryService : delegates
IamFacade --> IProfileQueryService : delegates

' =========================
' SERVICES / COMMANDS-QUERIES
' =========================
IAccountCommandService ..> IRegisterPassengerCommand : handles
IAccountCommandService ..> IRegisterDriverCommand : handles
IAccountCommandService ..> ISignInCommand : handles
IAccountCommandService ..> ISignOutCommand : handles

IProfileCommandService ..> IUpdateProfileCommand : handles

IAccountQueryService ..> IGetAuthStatusQuery : handles
IAccountQueryService ..> IGetCurrentSessionQuery : handles
IAccountQueryService ..> IGetDriverAccessStatusQuery : handles

IProfileQueryService ..> IGetMyProfileQuery : handles

' =========================
' SERVICES / REPOSITORIES
' =========================
IAccountCommandService --> IAccountRepository : uses
IAccountCommandService --> ISessionRepository : uses
IProfileCommandService --> IProfileRepository : uses

IAccountQueryService --> IAccountRepository : uses
IAccountQueryService --> ISessionRepository : uses
IProfileQueryService --> IProfileRepository : uses

' =========================
' REPOSITORY IMPLEMENTATIONS
' =========================
AccountRepositoryImpl ..|> IAccountRepository
ProfileRepositoryImpl ..|> IProfileRepository
SessionRepositoryImpl ..|> ISessionRepository

AccountRepositoryImpl --> Account : persists
ProfileRepositoryImpl --> Profile : persists
SessionRepositoryImpl --> Session : persists

' =========================
' EVENTS
' =========================
IAccountCommandService ..> PassengerAccountRegisteredEvent : publishes
IAccountCommandService ..> DriverAccountRegisteredEvent : publishes
IAccountCommandService ..> DriverPendingVerificationEvent : publishes
IAccountCommandService ..> UserSignedInEvent : publishes
IAccountCommandService ..> UserSignedOutEvent : publishes
IProfileCommandService ..> ProfileUpdatedEvent : publishes
IAccountCommandService ..> DriverAccessEnabledEvent : publishes
IAccountCommandService ..> DriverAccessRestrictedEvent : publishes

' =========================
' ASSEMBLERS / RESPONSES
' =========================
AccountResponseAssembler --> Account : uses
AccountResponseAssembler --> AccountResponse : creates
AccountResponseAssembler --> AuthStatusResponse : creates
AccountResponseAssembler --> DriverAccessStatusResponse : creates

ProfileResponseAssembler --> Profile : uses
ProfileResponseAssembler --> ProfileResponse : creates

SessionResponseAssembler --> Session : uses
SessionResponseAssembler --> SessionResponse : creates

@enduml
```

### A.2 Bounded Context: DRIVER MANAGEMENT
```
@startuml
left to right direction
skinparam packageStyle rectangle
skinparam classAttributeIconSize 0
hide empty members

package "drivermanagement.application.facade" {
    class DriverManagementFacade <<Facade>>
}

package "drivermanagement.domain.model" {
    class Driver
    class DriverDocument
    class VerificationReview

    interface ISubmitDriverRegistrationCommand <<Command>>
    interface IApproveDriverDocumentsCommand <<Command>>
    interface IRejectDriverDocumentsCommand <<Command>>
    interface IUpdateDriverDocumentsCommand <<Command>>
    interface IDisableDriverCommand <<Command>>
    interface IEnableDriverCommand <<Command>>

    interface IGetPendingDriversQuery <<Query>>
    interface IGetDriverVerificationStatusQuery <<Query>>
    interface IGetDriverDetailsQuery <<Query>>
    interface IGetDriversForAdminQuery <<Query>>
    interface ICanDriverBeOperationalQuery <<Query>>
}

package "drivermanagement.domain.events" {
    class DriverSubmittedForVerificationEvent <<DomainEvent>>
    class DriverDocumentsRegisteredEvent <<DomainEvent>>
    class DriverDocumentsUpdatedEvent <<DomainEvent>>
    class DriverDocumentsApprovedEvent <<DomainEvent>>
    class DriverDocumentsRejectedEvent <<DomainEvent>>
    class DriverEnabledEvent <<DomainEvent>>
    class DriverDisabledEvent <<DomainEvent>>
}

package "drivermanagement.domain.repositories" {
    interface IDriverRepository <<Repository>>
    interface IDriverDocumentRepository <<Repository>>
    interface IVerificationReviewRepository <<Repository>>
}

package "drivermanagement.domain.services.commandservices" {
    interface IDriverCommandService
}

package "drivermanagement.domain.services.queryservices" {
    interface IDriverQueryService
}

package "drivermanagement.infrastructure.repositories" {
    class DriverRepositoryImpl
    class DriverDocumentRepositoryImpl
    class VerificationReviewRepositoryImpl
}

package "drivermanagement.interfaces.rest.controllers" {
    class DriverManagementController
}

package "drivermanagement.interfaces.rest.resources" {
    class SubmitDriverRegistrationRequest
    class DriverActionRequest
    class DriverQueryRequest
    class DriverResponse
}

package "drivermanagement.interfaces.rest.assemblers" {
    class DriverRequestAssembler
    class DriverResponseAssembler
}

' =========================
' RELACIONES PRINCIPALES
' =========================

Driver "1" -- "1" DriverDocument
Driver "1" -- "0..*" VerificationReview

DriverManagementController --> DriverManagementFacade
DriverManagementController --> DriverRequestAssembler
DriverManagementController --> DriverResponseAssembler

DriverRequestAssembler --> SubmitDriverRegistrationRequest
DriverResponseAssembler --> DriverResponse

DriverManagementFacade --> IDriverCommandService
DriverManagementFacade --> IDriverQueryService

IDriverCommandService ..> ISubmitDriverRegistrationCommand
IDriverCommandService ..> IApproveDriverDocumentsCommand
IDriverCommandService ..> IRejectDriverDocumentsCommand
IDriverCommandService ..> IUpdateDriverDocumentsCommand
IDriverCommandService ..> IDisableDriverCommand
IDriverCommandService ..> IEnableDriverCommand

IDriverQueryService ..> IGetPendingDriversQuery
IDriverQueryService ..> IGetDriverVerificationStatusQuery
IDriverQueryService ..> IGetDriverDetailsQuery
IDriverQueryService ..> IGetDriversForAdminQuery
IDriverQueryService ..> ICanDriverBeOperationalQuery

IDriverCommandService --> IDriverRepository
IDriverCommandService --> IDriverDocumentRepository
IDriverCommandService --> IVerificationReviewRepository

IDriverQueryService --> IDriverRepository
IDriverQueryService --> IDriverDocumentRepository

DriverRepositoryImpl ..|> IDriverRepository
DriverDocumentRepositoryImpl ..|> IDriverDocumentRepository
VerificationReviewRepositoryImpl ..|> IVerificationReviewRepository

DriverRepositoryImpl --> Driver
DriverDocumentRepositoryImpl --> DriverDocument
VerificationReviewRepositoryImpl --> VerificationReview

IDriverCommandService ..> DriverSubmittedForVerificationEvent
IDriverCommandService ..> DriverDocumentsRegisteredEvent
IDriverCommandService ..> DriverDocumentsUpdatedEvent
IDriverCommandService ..> DriverDocumentsApprovedEvent
IDriverCommandService ..> DriverDocumentsRejectedEvent
IDriverCommandService ..> DriverEnabledEvent
IDriverCommandService ..> DriverDisabledEvent

@enduml
```

### A.3 Bounded Context: RIDE DISPATCH
```
@startuml
left to right direction
skinparam packageStyle rectangle
skinparam classAttributeIconSize 0
hide empty members

package "ridedispatch.application.facade" {
    class RideDispatchFacade <<Facade>>
}

package "ridedispatch.domain.model" {
    class DriverAvailability
    class RideRequest
    class Ride

    interface IToggleDriverAvailabilityCommand <<Command>>
    interface IDetectPassengerOriginCommand <<Command>>
    interface ISelectDestinationCommand <<Command>>
    interface ISubmitRideRequestCommand <<Command>>
    interface IAcceptRideRequestCommand <<Command>>
    interface IRejectRideRequestCommand <<Command>>
    interface IExpireRideRequestCommand <<Command>>
    interface IStartRideCommand <<Command>>
    interface ICancelRideCommand <<Command>>
    interface ICompleteRideCommand <<Command>>

    interface IGetNearbyDriversQuery <<Query>>
    interface IGetOpenRideRequestsForDriverQuery <<Query>>
    interface IGetRideRequestStatusQuery <<Query>>
    interface IGetActiveRideForPassengerQuery <<Query>>
    interface IGetActiveRideForDriverQuery <<Query>>
    interface IGetPickupRouteQuery <<Query>>
    interface ICanDriverReceiveRequestsQuery <<Query>>
}

package "ridedispatch.domain.events" {
    class DriverAvailabilityActivatedEvent <<DomainEvent>>
    class DriverAvailabilityDeactivatedEvent <<DomainEvent>>
    class PassengerOriginDetectedEvent <<DomainEvent>>
    class DestinationSelectedEvent <<DomainEvent>>
    class RideRequestSubmittedEvent <<DomainEvent>>
    class RideRequestBroadcastedEvent <<DomainEvent>>
    class RideRequestAcceptedEvent <<DomainEvent>>
    class RideRequestRejectedEvent <<DomainEvent>>
    class RideRequestExpiredEvent <<DomainEvent>>
    class RideAssignedEvent <<DomainEvent>>
    class RideStartedEvent <<DomainEvent>>
    class RideCancelledEvent <<DomainEvent>>
    class RideCompletedEvent <<DomainEvent>>
}

package "ridedispatch.domain.repositories" {
    interface IDriverAvailabilityRepository <<Repository>>
    interface IRideRequestRepository <<Repository>>
    interface IRideRepository <<Repository>>
}

package "ridedispatch.domain.services.commandservices" {
    interface IRideDispatchCommandService
}

package "ridedispatch.domain.services.queryservices" {
    interface IRideDispatchQueryService
}

package "ridedispatch.infrastructure.repositories" {
    class DriverAvailabilityRepositoryImpl
    class RideRequestRepositoryImpl
    class RideRepositoryImpl
}

package "ridedispatch.interfaces.rest.controllers" {
    class RideDispatchController
}

package "ridedispatch.interfaces.rest.resources" {
    class DriverAvailabilityRequest
    class RideRequestActionRequest
    class RideQueryRequest
    class RideDispatchResponse
}

package "ridedispatch.interfaces.rest.assemblers" {
    class RideDispatchRequestAssembler
    class RideDispatchResponseAssembler
}

' =========================
' RELACIONES PRINCIPALES
' =========================

DriverAvailability "1" -- "0..*" RideRequest
RideRequest "1" -- "0..1" Ride : becomes >
Ride --> DriverAvailability : assigned driver >

RideDispatchController --> RideDispatchFacade
RideDispatchController --> RideDispatchRequestAssembler
RideDispatchController --> RideDispatchResponseAssembler

RideDispatchRequestAssembler --> DriverAvailabilityRequest
RideDispatchRequestAssembler --> RideRequestActionRequest
RideDispatchRequestAssembler --> RideQueryRequest
RideDispatchResponseAssembler --> RideDispatchResponse

RideDispatchFacade --> IRideDispatchCommandService
RideDispatchFacade --> IRideDispatchQueryService

IRideDispatchCommandService ..> IToggleDriverAvailabilityCommand
IRideDispatchCommandService ..> IDetectPassengerOriginCommand
IRideDispatchCommandService ..> ISelectDestinationCommand
IRideDispatchCommandService ..> ISubmitRideRequestCommand
IRideDispatchCommandService ..> IAcceptRideRequestCommand
IRideDispatchCommandService ..> IRejectRideRequestCommand
IRideDispatchCommandService ..> IExpireRideRequestCommand
IRideDispatchCommandService ..> IStartRideCommand
IRideDispatchCommandService ..> ICancelRideCommand
IRideDispatchCommandService ..> ICompleteRideCommand

IRideDispatchQueryService ..> IGetNearbyDriversQuery
IRideDispatchQueryService ..> IGetOpenRideRequestsForDriverQuery
IRideDispatchQueryService ..> IGetRideRequestStatusQuery
IRideDispatchQueryService ..> IGetActiveRideForPassengerQuery
IRideDispatchQueryService ..> IGetActiveRideForDriverQuery
IRideDispatchQueryService ..> IGetPickupRouteQuery
IRideDispatchQueryService ..> ICanDriverReceiveRequestsQuery

IRideDispatchCommandService --> IDriverAvailabilityRepository
IRideDispatchCommandService --> IRideRequestRepository
IRideDispatchCommandService --> IRideRepository

IRideDispatchQueryService --> IDriverAvailabilityRepository
IRideDispatchQueryService --> IRideRequestRepository
IRideDispatchQueryService --> IRideRepository

DriverAvailabilityRepositoryImpl ..|> IDriverAvailabilityRepository
RideRequestRepositoryImpl ..|> IRideRequestRepository
RideRepositoryImpl ..|> IRideRepository

DriverAvailabilityRepositoryImpl --> DriverAvailability
RideRequestRepositoryImpl --> RideRequest
RideRepositoryImpl --> Ride

IRideDispatchCommandService ..> DriverAvailabilityActivatedEvent
IRideDispatchCommandService ..> DriverAvailabilityDeactivatedEvent
IRideDispatchCommandService ..> PassengerOriginDetectedEvent
IRideDispatchCommandService ..> DestinationSelectedEvent
IRideDispatchCommandService ..> RideRequestSubmittedEvent
IRideDispatchCommandService ..> RideRequestBroadcastedEvent
IRideDispatchCommandService ..> RideRequestAcceptedEvent
IRideDispatchCommandService ..> RideRequestRejectedEvent
IRideDispatchCommandService ..> RideRequestExpiredEvent
IRideDispatchCommandService ..> RideAssignedEvent
IRideDispatchCommandService ..> RideStartedEvent
IRideDispatchCommandService ..> RideCancelledEvent
IRideDispatchCommandService ..> RideCompletedEvent

@enduml
```

### A.4 Bounded Context: TRUST AND REPUTATION
```
@startuml
skinparam packageStyle rectangle
skinparam classAttributeIconSize 0
hide empty members

package "trustreputation.application.facade" {
    class TrustReputationFacade <<Facade>> {
        + rateDriver(command: IRateDriverCommand): TripRating
        + ratePassenger(command: IRatePassengerCommand): TripRating
        + skipDriverRating(command: ISkipDriverRatingCommand): TripRating
        + skipPassengerRating(command: ISkipPassengerRatingCommand): TripRating
        + recordLowPassengerRatingComment(command: IRecordLowPassengerRatingCommentCommand): TripRating
        + openTripForRating(command: IOpenTripForRatingCommand): TripRating
        + getDriverReputation(query: IGetDriverReputationQuery): DriverReputation
        + getPassengerReputation(query: IGetPassengerReputationQuery): PassengerReputation
        + getRateableTripForPassenger(query: IGetRateableTripForPassengerQuery): TripRating
        + getRateableTripForDriver(query: IGetRateableTripForDriverQuery): TripRating
        + getPublicDriverRatingCard(query: IGetPublicDriverRatingCardQuery): DriverReputation
        + getMyReputation(query: IGetMyReputationQuery): Object
    }
}

package "trustreputation.domain.model.entities" {
    enum RatingStatus {
        PENDING
        RATED
        SKIPPED
        EXPIRED
    }

    enum RatedPartyType {
        DRIVER
        PASSENGER
    }

    class TripRating {
        - tripRatingId: UUID
        - tripId: UUID
        - driverId: UUID
        - passengerId: UUID
        - driverRatingStatus: RatingStatus
        - passengerRatingStatus: RatingStatus
        - driverScore: Integer
        - passengerScore: Integer
        - passengerComment: String
        - rateableUntil: DateTime
        + openForRating(): void
        + rateDriver(score: Integer): void
        + ratePassenger(score: Integer): void
        + skipDriverRating(): void
        + skipPassengerRating(): void
        + recordPassengerLowRatingComment(comment: String): void
        + isStillRateable(now: DateTime): boolean
    }

    class DriverReputation {
        - driverId: UUID
        - averageScore: Decimal
        - totalRatings: Integer
        + recalculate(score: Integer): void
        + hasRatings(): boolean
    }

    class PassengerReputation {
        - passengerId: UUID
        - averageScore: Decimal
        - totalRatings: Integer
        + recalculate(score: Integer): void
        + hasRatings(): boolean
    }
}

package "trustreputation.domain.model.commands" {
    interface IOpenTripForRatingCommand <<Command>> {
        + getTripId(): UUID
        + getDriverId(): UUID
        + getPassengerId(): UUID
        + getRateableUntil(): DateTime
    }

    interface IRateDriverCommand <<Command>> {
        + getTripId(): UUID
        + getDriverId(): UUID
        + getPassengerId(): UUID
        + getScore(): Integer
    }

    interface IRatePassengerCommand <<Command>> {
        + getTripId(): UUID
        + getDriverId(): UUID
        + getPassengerId(): UUID
        + getScore(): Integer
    }

    interface ISkipDriverRatingCommand <<Command>> {
        + getTripId(): UUID
        + getPassengerId(): UUID
    }

    interface ISkipPassengerRatingCommand <<Command>> {
        + getTripId(): UUID
        + getDriverId(): UUID
    }

    interface IRecordLowPassengerRatingCommentCommand <<Command>> {
        + getTripId(): UUID
        + getDriverId(): UUID
        + getComment(): String
    }
}

package "trustreputation.domain.model.queries" {
    interface IGetDriverReputationQuery <<Query>> {
        + getDriverId(): UUID
    }

    interface IGetPassengerReputationQuery <<Query>> {
        + getPassengerId(): UUID
    }

    interface IGetRateableTripForPassengerQuery <<Query>> {
        + getTripId(): UUID
        + getPassengerId(): UUID
    }

    interface IGetRateableTripForDriverQuery <<Query>> {
        + getTripId(): UUID
        + getDriverId(): UUID
    }

    interface IGetPublicDriverRatingCardQuery <<Query>> {
        + getDriverId(): UUID
    }

    interface IGetMyReputationQuery <<Query>> {
        + getAccountId(): UUID
        + getRatedPartyType(): RatedPartyType
    }
}

package "trustreputation.domain.events" {
    class TripBecameRateableEvent <<DomainEvent>> {
        + tripId: UUID
        + driverId: UUID
        + passengerId: UUID
        + occurredOn: DateTime
    }

    class DriverRatedEvent <<DomainEvent>> {
        + tripId: UUID
        + driverId: UUID
        + score: Integer
        + occurredOn: DateTime
    }

    class PassengerRatedEvent <<DomainEvent>> {
        + tripId: UUID
        + passengerId: UUID
        + score: Integer
        + occurredOn: DateTime
    }

    class DriverRatingSkippedEvent <<DomainEvent>> {
        + tripId: UUID
        + passengerId: UUID
        + occurredOn: DateTime
    }

    class PassengerRatingSkippedEvent <<DomainEvent>> {
        + tripId: UUID
        + driverId: UUID
        + occurredOn: DateTime
    }

    class LowPassengerRatingCommentRecordedEvent <<DomainEvent>> {
        + tripId: UUID
        + driverId: UUID
        + occurredOn: DateTime
    }

    class DriverReputationUpdatedEvent <<DomainEvent>> {
        + driverId: UUID
        + occurredOn: DateTime
    }

    class PassengerReputationUpdatedEvent <<DomainEvent>> {
        + passengerId: UUID
        + occurredOn: DateTime
    }
}

package "trustreputation.domain.repositories" {
    interface ITripRatingRepository <<Repository>> {
        + save(tripRating: TripRating): void
        + findByTripId(tripId: UUID): TripRating
        + findRateableTripForPassenger(tripId: UUID, passengerId: UUID): TripRating
        + findRateableTripForDriver(tripId: UUID, driverId: UUID): TripRating
    }

    interface IDriverReputationRepository <<Repository>> {
        + save(driverReputation: DriverReputation): void
        + findByDriverId(driverId: UUID): DriverReputation
    }

    interface IPassengerReputationRepository <<Repository>> {
        + save(passengerReputation: PassengerReputation): void
        + findByPassengerId(passengerId: UUID): PassengerReputation
    }
}

package "trustreputation.domain.services.commandservices" {
    interface ITrustReputationCommandService {
        + openTripForRating(command: IOpenTripForRatingCommand): TripRating
        + rateDriver(command: IRateDriverCommand): TripRating
        + ratePassenger(command: IRatePassengerCommand): TripRating
        + skipDriverRating(command: ISkipDriverRatingCommand): TripRating
        + skipPassengerRating(command: ISkipPassengerRatingCommand): TripRating
        + recordLowPassengerRatingComment(command: IRecordLowPassengerRatingCommentCommand): TripRating
    }
}

package "trustreputation.domain.services.queryservices" {
    interface ITrustReputationQueryService {
        + getDriverReputation(query: IGetDriverReputationQuery): DriverReputation
        + getPassengerReputation(query: IGetPassengerReputationQuery): PassengerReputation
        + getRateableTripForPassenger(query: IGetRateableTripForPassengerQuery): TripRating
        + getRateableTripForDriver(query: IGetRateableTripForDriverQuery): TripRating
        + getPublicDriverRatingCard(query: IGetPublicDriverRatingCardQuery): DriverReputation
        + getMyReputation(query: IGetMyReputationQuery): Object
    }
}

package "trustreputation.infrastructure.repositories" {
    class TripRatingRepositoryImpl {
        + save(tripRating: TripRating): void
        + findByTripId(tripId: UUID): TripRating
        + findRateableTripForPassenger(tripId: UUID, passengerId: UUID): TripRating
        + findRateableTripForDriver(tripId: UUID, driverId: UUID): TripRating
    }

    class DriverReputationRepositoryImpl {
        + save(driverReputation: DriverReputation): void
        + findByDriverId(driverId: UUID): DriverReputation
    }

    class PassengerReputationRepositoryImpl {
        + save(passengerReputation: PassengerReputation): void
        + findByPassengerId(passengerId: UUID): PassengerReputation
    }
}

package "trustreputation.interfaces.rest.controllers" {
    class TrustReputationController {
        + openTripForRating(request: OpenTripForRatingRequest): TripRatingResponse
        + rateDriver(request: RateDriverRequest): TripRatingResponse
        + ratePassenger(request: RatePassengerRequest): TripRatingResponse
        + skipDriverRating(request: SkipDriverRatingRequest): TripRatingResponse
        + skipPassengerRating(request: SkipPassengerRatingRequest): TripRatingResponse
        + recordLowPassengerRatingComment(request: LowPassengerRatingCommentRequest): TripRatingResponse
        + getDriverReputation(request: DriverReputationRequest): DriverReputationResponse
        + getPassengerReputation(request: PassengerReputationRequest): PassengerReputationResponse
        + getRateableTripForPassenger(request: RateableTripForPassengerRequest): TripRatingResponse
        + getRateableTripForDriver(request: RateableTripForDriverRequest): TripRatingResponse
        + getPublicDriverRatingCard(request: PublicDriverRatingCardRequest): DriverReputationResponse
        + getMyReputation(request: MyReputationRequest): ReputationSummaryResponse
    }
}

package "trustreputation.interfaces.rest.resources.requests" {
    class OpenTripForRatingRequest {
        + tripId: UUID
        + driverId: UUID
        + passengerId: UUID
        + rateableUntil: DateTime
    }

    class RateDriverRequest {
        + tripId: UUID
        + driverId: UUID
        + passengerId: UUID
        + score: Integer
    }

    class RatePassengerRequest {
        + tripId: UUID
        + driverId: UUID
        + passengerId: UUID
        + score: Integer
    }

    class SkipDriverRatingRequest {
        + tripId: UUID
        + passengerId: UUID
    }

    class SkipPassengerRatingRequest {
        + tripId: UUID
        + driverId: UUID
    }

    class LowPassengerRatingCommentRequest {
        + tripId: UUID
        + driverId: UUID
        + comment: String
    }

    class DriverReputationRequest {
        + driverId: UUID
    }

    class PassengerReputationRequest {
        + passengerId: UUID
    }

    class RateableTripForPassengerRequest {
        + tripId: UUID
        + passengerId: UUID
    }

    class RateableTripForDriverRequest {
        + tripId: UUID
        + driverId: UUID
    }

    class PublicDriverRatingCardRequest {
        + driverId: UUID
    }

    class MyReputationRequest {
        + accountId: UUID
        + ratedPartyType: String
    }
}

package "trustreputation.interfaces.rest.resources.responses" {
    class TripRatingResponse {
        + tripId: UUID
        + driverId: UUID
        + passengerId: UUID
        + driverRatingStatus: String
        + passengerRatingStatus: String
        + driverScore: Integer
        + passengerScore: Integer
        + passengerComment: String
    }

    class DriverReputationResponse {
        + driverId: UUID
        + averageScore: Decimal
        + totalRatings: Integer
    }

    class PassengerReputationResponse {
        + passengerId: UUID
        + averageScore: Decimal
        + totalRatings: Integer
    }

    class ReputationSummaryResponse {
        + accountId: UUID
        + ratedPartyType: String
        + averageScore: Decimal
        + totalRatings: Integer
    }
}

package "trustreputation.interfaces.rest.assemblers" {
    class TripRatingResponseAssembler {
        + toResponse(tripRating: TripRating): TripRatingResponse
    }

    class DriverReputationResponseAssembler {
        + toResponse(driverReputation: DriverReputation): DriverReputationResponse
    }

    class PassengerReputationResponseAssembler {
        + toResponse(passengerReputation: PassengerReputation): PassengerReputationResponse
    }

    class ReputationSummaryResponseAssembler {
        + toDriverSummary(accountId: UUID, driverReputation: DriverReputation): ReputationSummaryResponse
        + toPassengerSummary(accountId: UUID, passengerReputation: PassengerReputation): ReputationSummaryResponse
    }
}

' =========================
' RELACIONES DE DOMINIO
' =========================
TripRating --> RatingStatus
TripRating --> RatedPartyType
TripRating --> DriverReputation : updates >
TripRating --> PassengerReputation : updates >

' =========================
' REQUESTS IMPLEMENTAN COMMANDS / QUERIES
' =========================
OpenTripForRatingRequest ..|> IOpenTripForRatingCommand
RateDriverRequest ..|> IRateDriverCommand
RatePassengerRequest ..|> IRatePassengerCommand
SkipDriverRatingRequest ..|> ISkipDriverRatingCommand
SkipPassengerRatingRequest ..|> ISkipPassengerRatingCommand
LowPassengerRatingCommentRequest ..|> IRecordLowPassengerRatingCommentCommand

DriverReputationRequest ..|> IGetDriverReputationQuery
PassengerReputationRequest ..|> IGetPassengerReputationQuery
RateableTripForPassengerRequest ..|> IGetRateableTripForPassengerQuery
RateableTripForDriverRequest ..|> IGetRateableTripForDriverQuery
PublicDriverRatingCardRequest ..|> IGetPublicDriverRatingCardQuery
MyReputationRequest ..|> IGetMyReputationQuery

' =========================
' CONTROLLER / FACADE
' =========================
TrustReputationController --> TrustReputationFacade : uses
TrustReputationController --> TripRatingResponseAssembler : uses
TrustReputationController --> DriverReputationResponseAssembler : uses
TrustReputationController --> PassengerReputationResponseAssembler : uses
TrustReputationController --> ReputationSummaryResponseAssembler : uses

' =========================
' FACADE / SERVICES
' =========================
TrustReputationFacade --> ITrustReputationCommandService : delegates
TrustReputationFacade --> ITrustReputationQueryService : delegates

' =========================
' SERVICES / COMMANDS-QUERIES
' =========================
ITrustReputationCommandService ..> IOpenTripForRatingCommand : handles
ITrustReputationCommandService ..> IRateDriverCommand : handles
ITrustReputationCommandService ..> IRatePassengerCommand : handles
ITrustReputationCommandService ..> ISkipDriverRatingCommand : handles
ITrustReputationCommandService ..> ISkipPassengerRatingCommand : handles
ITrustReputationCommandService ..> IRecordLowPassengerRatingCommentCommand : handles

ITrustReputationQueryService ..> IGetDriverReputationQuery : handles
ITrustReputationQueryService ..> IGetPassengerReputationQuery : handles
ITrustReputationQueryService ..> IGetRateableTripForPassengerQuery : handles
ITrustReputationQueryService ..> IGetRateableTripForDriverQuery : handles
ITrustReputationQueryService ..> IGetPublicDriverRatingCardQuery : handles
ITrustReputationQueryService ..> IGetMyReputationQuery : handles

' =========================
' SERVICES / REPOSITORIES
' =========================
ITrustReputationCommandService --> ITripRatingRepository : uses
ITrustReputationCommandService --> IDriverReputationRepository : uses
ITrustReputationCommandService --> IPassengerReputationRepository : uses

ITrustReputationQueryService --> ITripRatingRepository : uses
ITrustReputationQueryService --> IDriverReputationRepository : uses
ITrustReputationQueryService --> IPassengerReputationRepository : uses

' =========================
' REPOSITORY IMPLEMENTATIONS
' =========================
TripRatingRepositoryImpl ..|> ITripRatingRepository
DriverReputationRepositoryImpl ..|> IDriverReputationRepository
PassengerReputationRepositoryImpl ..|> IPassengerReputationRepository

TripRatingRepositoryImpl --> TripRating : persists
DriverReputationRepositoryImpl --> DriverReputation : persists
PassengerReputationRepositoryImpl --> PassengerReputation : persists

' =========================
' EVENTS
' =========================
ITrustReputationCommandService ..> TripBecameRateableEvent : publishes
ITrustReputationCommandService ..> DriverRatedEvent : publishes
ITrustReputationCommandService ..> PassengerRatedEvent : publishes
ITrustReputationCommandService ..> DriverRatingSkippedEvent : publishes
ITrustReputationCommandService ..> PassengerRatingSkippedEvent : publishes
ITrustReputationCommandService ..> LowPassengerRatingCommentRecordedEvent : publishes
ITrustReputationCommandService ..> DriverReputationUpdatedEvent : publishes
ITrustReputationCommandService ..> PassengerReputationUpdatedEvent : publishes

' =========================
' ASSEMBLERS / RESPONSES
' =========================
TripRatingResponseAssembler --> TripRating : uses
TripRatingResponseAssembler --> TripRatingResponse : creates

DriverReputationResponseAssembler --> DriverReputation : uses
DriverReputationResponseAssembler --> DriverReputationResponse : creates

PassengerReputationResponseAssembler --> PassengerReputation : uses
PassengerReputationResponseAssembler --> PassengerReputationResponse : creates

ReputationSummaryResponseAssembler --> DriverReputation : uses
ReputationSummaryResponseAssembler --> PassengerReputation : uses
ReputationSummaryResponseAssembler --> ReputationSummaryResponse : creates

@enduml
```

### A.5 Bounded Context: MONETIZATION
```
@startuml
left to right direction
skinparam packageStyle rectangle
skinparam classAttributeIconSize 0
hide empty members

package "monetization.application.facade" {
    class MonetizationFacade <<Facade>> {
        + calculateEstimatedFare(command: ICalculateEstimatedFareCommand): FarePolicy
        + configureFarePolicy(command: IConfigureFarePolicyCommand): FarePolicy
        + topUpWallet(command: ITopUpWalletCommand): Wallet
        + registerTopUpFailure(command: IRegisterTopUpFailureCommand): WalletTransaction
        + applyRideCommission(command: IApplyRideCommissionCommand): WalletTransaction
        + blockDriverMonetizationAccess(command: IBlockDriverMonetizationAccessCommand): Wallet
        + unblockDriverMonetizationAccess(command: IUnblockDriverMonetizationAccessCommand): Wallet
        + getEstimatedFare(query: IGetEstimatedFareQuery): FarePolicy
        + getCurrentFarePolicy(query: IGetCurrentFarePolicyQuery): FarePolicy
        + getWalletBalance(query: IGetWalletBalanceQuery): Wallet
        + getWalletTransactionHistory(query: IGetWalletTransactionHistoryQuery): List<WalletTransaction>
        + canDriverOperateFromMonetization(query: ICanDriverOperateFromMonetizationQuery): boolean
    }
}

package "monetization.domain.model.entities" {
    enum WalletStatus {
        ACTIVE
        BLOCKED
    }

    enum TransactionType {
        TOP_UP
        TOP_UP_FAILED
        COMMISSION
    }

    class FarePolicy {
        - farePolicyId: UUID
        - baseFare: Decimal
        - pricePerKm: Decimal
        - minimumFare: Decimal
        + configure(baseFare: Decimal, pricePerKm: Decimal, minimumFare: Decimal): void
        + calculate(distanceKm: Decimal): Decimal
    }

    class Wallet {
        - walletId: UUID
        - driverId: UUID
        - balance: Decimal
        - status: WalletStatus
        + topUp(amount: Decimal): void
        + applyCommission(amount: Decimal): void
        + block(): void
        + unblock(): void
        + hasPositiveBalance(): boolean
    }

    class WalletTransaction {
        - transactionId: UUID
        - walletId: UUID
        - tripId: UUID
        - type: TransactionType
        - amount: Decimal
        - resultingBalance: Decimal
        + record(): void
    }
}

package "monetization.domain.model.commands" {
    interface ICalculateEstimatedFareCommand <<Command>> {
        + getOrigin(): String
        + getDestination(): String
        + getDistanceKm(): Decimal
    }

    interface IConfigureFarePolicyCommand <<Command>> {
        + getBaseFare(): Decimal
        + getPricePerKm(): Decimal
        + getMinimumFare(): Decimal
    }

    interface ITopUpWalletCommand <<Command>> {
        + getDriverId(): UUID
        + getAmount(): Decimal
    }

    interface IRegisterTopUpFailureCommand <<Command>> {
        + getDriverId(): UUID
        + getAmount(): Decimal
        + getReason(): String
    }

    interface IApplyRideCommissionCommand <<Command>> {
        + getDriverId(): UUID
        + getTripId(): UUID
        + getRideFare(): Decimal
    }

    interface IBlockDriverMonetizationAccessCommand <<Command>> {
        + getDriverId(): UUID
    }

    interface IUnblockDriverMonetizationAccessCommand <<Command>> {
        + getDriverId(): UUID
    }
}

package "monetization.domain.model.queries" {
    interface IGetEstimatedFareQuery <<Query>> {
        + getOrigin(): String
        + getDestination(): String
        + getDistanceKm(): Decimal
    }

    interface IGetCurrentFarePolicyQuery <<Query>> {
    }

    interface IGetWalletBalanceQuery <<Query>> {
        + getDriverId(): UUID
    }

    interface IGetWalletTransactionHistoryQuery <<Query>> {
        + getDriverId(): UUID
        + getPage(): Integer
        + getSize(): Integer
    }

    interface ICanDriverOperateFromMonetizationQuery <<Query>> {
        + getDriverId(): UUID
    }
}

package "monetization.domain.events" {
    class EstimatedFareCalculatedEvent <<DomainEvent>> {
        + occurredOn: DateTime
    }

    class FarePolicyConfiguredEvent <<DomainEvent>> {
        + occurredOn: DateTime
    }

    class WalletTopUpRequestedEvent <<DomainEvent>> {
        + driverId: UUID
        + occurredOn: DateTime
    }

    class WalletTopUpSucceededEvent <<DomainEvent>> {
        + driverId: UUID
        + occurredOn: DateTime
    }

    class WalletTopUpFailedEvent <<DomainEvent>> {
        + driverId: UUID
        + occurredOn: DateTime
    }

    class WalletBalanceUpdatedEvent <<DomainEvent>> {
        + driverId: UUID
        + occurredOn: DateTime
    }

    class WalletTransactionRecordedEvent <<DomainEvent>> {
        + walletId: UUID
        + occurredOn: DateTime
    }

    class RideCommissionAppliedEvent <<DomainEvent>> {
        + driverId: UUID
        + tripId: UUID
        + occurredOn: DateTime
    }

    class DriverWalletDepletedEvent <<DomainEvent>> {
        + driverId: UUID
        + occurredOn: DateTime
    }

    class DriverWalletOperationallyBlockedEvent <<DomainEvent>> {
        + driverId: UUID
        + occurredOn: DateTime
    }

    class DriverMonetizationAccessRestoredEvent <<DomainEvent>> {
        + driverId: UUID
        + occurredOn: DateTime
    }
}

package "monetization.domain.repositories" {
    interface IFarePolicyRepository <<Repository>> {
        + save(farePolicy: FarePolicy): void
        + getCurrent(): FarePolicy
    }

    interface IWalletRepository <<Repository>> {
        + save(wallet: Wallet): void
        + findByDriverId(driverId: UUID): Wallet
    }

    interface IWalletTransactionRepository <<Repository>> {
        + save(walletTransaction: WalletTransaction): void
        + findByDriverId(driverId: UUID, page: Integer, size: Integer): List<WalletTransaction>
    }
}

package "monetization.domain.services.commandservices" {
    interface IMonetizationCommandService {
        + calculateEstimatedFare(command: ICalculateEstimatedFareCommand): FarePolicy
        + configureFarePolicy(command: IConfigureFarePolicyCommand): FarePolicy
        + topUpWallet(command: ITopUpWalletCommand): Wallet
        + registerTopUpFailure(command: IRegisterTopUpFailureCommand): WalletTransaction
        + applyRideCommission(command: IApplyRideCommissionCommand): WalletTransaction
        + blockDriverMonetizationAccess(command: IBlockDriverMonetizationAccessCommand): Wallet
        + unblockDriverMonetizationAccess(command: IUnblockDriverMonetizationAccessCommand): Wallet
    }
}

package "monetization.domain.services.queryservices" {
    interface IMonetizationQueryService {
        + getEstimatedFare(query: IGetEstimatedFareQuery): FarePolicy
        + getCurrentFarePolicy(query: IGetCurrentFarePolicyQuery): FarePolicy
        + getWalletBalance(query: IGetWalletBalanceQuery): Wallet
        + getWalletTransactionHistory(query: IGetWalletTransactionHistoryQuery): List<WalletTransaction>
        + canDriverOperateFromMonetization(query: ICanDriverOperateFromMonetizationQuery): boolean
    }
}

package "monetization.infrastructure.repositories" {
    class FarePolicyRepositoryImpl {
        + save(farePolicy: FarePolicy): void
        + getCurrent(): FarePolicy
    }

    class WalletRepositoryImpl {
        + save(wallet: Wallet): void
        + findByDriverId(driverId: UUID): Wallet
    }

    class WalletTransactionRepositoryImpl {
        + save(walletTransaction: WalletTransaction): void
        + findByDriverId(driverId: UUID, page: Integer, size: Integer): List<WalletTransaction>
    }
}

package "monetization.interfaces.rest.controllers" {
    class MonetizationController {
        + calculateEstimatedFare(request: EstimatedFareRequest): FareQuoteResponse
        + configureFarePolicy(request: ConfigureFarePolicyRequest): FarePolicyResponse
        + topUpWallet(request: TopUpWalletRequest): WalletResponse
        + registerTopUpFailure(request: TopUpFailureRequest): WalletTransactionResponse
        + applyRideCommission(request: ApplyRideCommissionRequest): WalletTransactionResponse
        + getCurrentFarePolicy(request: CurrentFarePolicyRequest): FarePolicyResponse
        + getWalletBalance(request: WalletBalanceRequest): WalletResponse
        + getWalletTransactionHistory(request: WalletTransactionHistoryRequest): WalletTransactionHistoryResponse
        + canDriverOperateFromMonetization(request: MonetizationOperationalCheckRequest): MonetizationOperationalCheckResponse
    }
}

package "monetization.interfaces.rest.resources.requests" {
    class EstimatedFareRequest {
        + origin: String
        + destination: String
        + distanceKm: Decimal
    }

    class ConfigureFarePolicyRequest {
        + baseFare: Decimal
        + pricePerKm: Decimal
        + minimumFare: Decimal
    }

    class TopUpWalletRequest {
        + driverId: UUID
        + amount: Decimal
    }

    class TopUpFailureRequest {
        + driverId: UUID
        + amount: Decimal
        + reason: String
    }

    class ApplyRideCommissionRequest {
        + driverId: UUID
        + tripId: UUID
        + rideFare: Decimal
    }

    class CurrentFarePolicyRequest {
    }

    class WalletBalanceRequest {
        + driverId: UUID
    }

    class WalletTransactionHistoryRequest {
        + driverId: UUID
        + page: Integer
        + size: Integer
    }

    class MonetizationOperationalCheckRequest {
        + driverId: UUID
    }
}

package "monetization.interfaces.rest.resources.responses" {
    class FareQuoteResponse {
        + estimatedFare: Decimal
    }

    class FarePolicyResponse {
        + baseFare: Decimal
        + pricePerKm: Decimal
        + minimumFare: Decimal
    }

    class WalletResponse {
        + walletId: UUID
        + driverId: UUID
        + balance: Decimal
        + status: String
    }

    class WalletTransactionResponse {
        + transactionId: UUID
        + walletId: UUID
        + tripId: UUID
        + type: String
        + amount: Decimal
        + resultingBalance: Decimal
    }

    class WalletTransactionHistoryResponse {
        + transactions: List<WalletTransactionResponse>
    }

    class MonetizationOperationalCheckResponse {
        + driverId: UUID
        + canOperate: boolean
    }
}

package "monetization.interfaces.rest.assemblers" {
    class FarePolicyResponseAssembler {
        + toPolicyResponse(farePolicy: FarePolicy): FarePolicyResponse
        + toQuoteResponse(estimatedFare: Decimal): FareQuoteResponse
    }

    class WalletResponseAssembler {
        + toResponse(wallet: Wallet): WalletResponse
    }

    class WalletTransactionResponseAssembler {
        + toResponse(walletTransaction: WalletTransaction): WalletTransactionResponse
        + toHistoryResponse(transactions: List<WalletTransaction>): WalletTransactionHistoryResponse
    }

    class MonetizationOperationalCheckResponseAssembler {
        + toResponse(driverId: UUID, canOperate: boolean): MonetizationOperationalCheckResponse
    }
}

' =========================
' RELACIONES DE DOMINIO
' =========================
Wallet --> WalletStatus
WalletTransaction --> TransactionType
Wallet "1" -- "0..*" WalletTransaction : records >
FarePolicy --> Wallet : influences ride monetization >

' =========================
' REQUESTS IMPLEMENTAN COMMANDS / QUERIES
' =========================
EstimatedFareRequest ..|> ICalculateEstimatedFareCommand
EstimatedFareRequest ..|> IGetEstimatedFareQuery
ConfigureFarePolicyRequest ..|> IConfigureFarePolicyCommand
TopUpWalletRequest ..|> ITopUpWalletCommand
TopUpFailureRequest ..|> IRegisterTopUpFailureCommand
ApplyRideCommissionRequest ..|> IApplyRideCommissionCommand
CurrentFarePolicyRequest ..|> IGetCurrentFarePolicyQuery
WalletBalanceRequest ..|> IGetWalletBalanceQuery
WalletTransactionHistoryRequest ..|> IGetWalletTransactionHistoryQuery
MonetizationOperationalCheckRequest ..|> ICanDriverOperateFromMonetizationQuery

' =========================
' CONTROLLER / FACADE
' =========================
MonetizationController --> MonetizationFacade : uses
MonetizationController --> FarePolicyResponseAssembler : uses
MonetizationController --> WalletResponseAssembler : uses
MonetizationController --> WalletTransactionResponseAssembler : uses
MonetizationController --> MonetizationOperationalCheckResponseAssembler : uses

' =========================
' FACADE / SERVICES
' =========================
MonetizationFacade --> IMonetizationCommandService : delegates
MonetizationFacade --> IMonetizationQueryService : delegates

' =========================
' SERVICES / COMMANDS-QUERIES
' =========================
IMonetizationCommandService ..> ICalculateEstimatedFareCommand : handles
IMonetizationCommandService ..> IConfigureFarePolicyCommand : handles
IMonetizationCommandService ..> ITopUpWalletCommand : handles
IMonetizationCommandService ..> IRegisterTopUpFailureCommand : handles
IMonetizationCommandService ..> IApplyRideCommissionCommand : handles
IMonetizationCommandService ..> IBlockDriverMonetizationAccessCommand : handles
IMonetizationCommandService ..> IUnblockDriverMonetizationAccessCommand : handles

IMonetizationQueryService ..> IGetEstimatedFareQuery : handles
IMonetizationQueryService ..> IGetCurrentFarePolicyQuery : handles
IMonetizationQueryService ..> IGetWalletBalanceQuery : handles
IMonetizationQueryService ..> IGetWalletTransactionHistoryQuery : handles
IMonetizationQueryService ..> ICanDriverOperateFromMonetizationQuery : handles

' =========================
' SERVICES / REPOSITORIES
' =========================
IMonetizationCommandService --> IFarePolicyRepository : uses
IMonetizationCommandService --> IWalletRepository : uses
IMonetizationCommandService --> IWalletTransactionRepository : uses

IMonetizationQueryService --> IFarePolicyRepository : uses
IMonetizationQueryService --> IWalletRepository : uses
IMonetizationQueryService --> IWalletTransactionRepository : uses

' =========================
' REPOSITORY IMPLEMENTATIONS
' =========================
FarePolicyRepositoryImpl ..|> IFarePolicyRepository
WalletRepositoryImpl ..|> IWalletRepository
WalletTransactionRepositoryImpl ..|> IWalletTransactionRepository

FarePolicyRepositoryImpl --> FarePolicy : persists
WalletRepositoryImpl --> Wallet : persists
WalletTransactionRepositoryImpl --> WalletTransaction : persists

' =========================
' EVENTS
' =========================
IMonetizationCommandService ..> EstimatedFareCalculatedEvent : publishes
IMonetizationCommandService ..> FarePolicyConfiguredEvent : publishes
IMonetizationCommandService ..> WalletTopUpRequestedEvent : publishes
IMonetizationCommandService ..> WalletTopUpSucceededEvent : publishes
IMonetizationCommandService ..> WalletTopUpFailedEvent : publishes
IMonetizationCommandService ..> WalletBalanceUpdatedEvent : publishes
IMonetizationCommandService ..> WalletTransactionRecordedEvent : publishes
IMonetizationCommandService ..> RideCommissionAppliedEvent : publishes
IMonetizationCommandService ..> DriverWalletDepletedEvent : publishes
IMonetizationCommandService ..> DriverWalletOperationallyBlockedEvent : publishes
IMonetizationCommandService ..> DriverMonetizationAccessRestoredEvent : publishes

' =========================
' ASSEMBLERS / RESPONSES
' =========================
FarePolicyResponseAssembler --> FarePolicy : uses
FarePolicyResponseAssembler --> FarePolicyResponse : creates
FarePolicyResponseAssembler --> FareQuoteResponse : creates

WalletResponseAssembler --> Wallet : uses
WalletResponseAssembler --> WalletResponse : creates

WalletTransactionResponseAssembler --> WalletTransaction : uses
WalletTransactionResponseAssembler --> WalletTransactionResponse : creates
WalletTransactionResponseAssembler --> WalletTransactionHistoryResponse : creates

MonetizationOperationalCheckResponseAssembler --> MonetizationOperationalCheckResponse : creates

@enduml
```

