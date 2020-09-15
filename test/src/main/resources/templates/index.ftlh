<#-- импортируем основной шаблон-контейнер который содержит в себе разметку для основной структуры страницы -->
<#import "partials/main.ftlh" as main />

<#-- обрабатываем его, и передаём ему список скриптов, которые необходимо подключить-->
<@main.renderWith>

    <div class="container mb-5 mt-5">
        <div class="row mb-5">
            <div class="col-12 col-sm-6 col-lg-4 mb-5">
                <div class="card h-100">
                    <h4 class="card-header font-weight-bold p-3 text-center">Клиенты</h4>
                    <div class="card-body d-flex flex-column">
                        <ul>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="/clients/add_and_search">Добавление клиента</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="/clients/add_and_search"> Просмотр карточки клиента </a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="/clients/add_and_search"> Редактирование клиента</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="/clients/add_and_search"> Удаление клиента</a>
                            </li>

                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="/clients/add_and_search">Список клиентов</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="/clients/add_and_search">Поиск по клиентам</a>
                            </li>

                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Журнал операций по клиенту</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-4 mb-5">
                <div class="card h-100">
                    <h4 class="card-header font-weight-bold p-3 text-center">Кредиты</h4>
                    <div class="card-body d-flex flex-column">
                        <ul>
                            <li class="pb-1">
                                <a class="btn btn-success my-2 my-sm-0 field"  href="#"> Добавить заявку на кредит </a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Просмотр карточки кредита</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn-success my-2 my-sm-0 field" href="#">Редактировать заявку на кредит</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Удалить заявку на кредит</a>
                            </li>
                            
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field"  href="/credits">Список кредитов</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field"  href="/credits">Поиск по кредитам</a>
                            </li>
                            
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Выдать кредит</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">График платежей</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Начисление процентов по кредитам</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Определение статуса "Просрочен"</a>
                            </li>

                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Погасить кредит</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Погашение за счет обеспечения</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Списание долга</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Журнал операций по кредиту</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-4 mb-5">
                <div class="card h-100">
                    <h4 class="card-header font-weight-bold p-3 text-center">Залоги</h4>
                    <div class="card-body d-flex flex-column">
                        <ul>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Добавить залог</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Просмотр карточки о залоге</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Редактировать залог</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Удалить залог</a>
                            </li>

                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Список залогов</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Поиск по залогам</a>
                            </li>

                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field" href="#">Реализовать залог</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="card h-100">
                    <h4 class="card-header font-weight-bold p-3 text-center">Операции</h4>
                    <div class="card-body d-flex flex-column">
                        <ul>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field"  href="/operation"> Добавление операции </a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field"  href="/operation"> Просмотр карточки по операции </a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field"  href="/operation"> Редактирование операции </a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field"  href="/operation"> Удаление операции </a>
                            </li>

                            <li class="pb-1">
                                <a class="btn btn btn-success my-2 my-sm-0 field"  href="/operation"> Журнал операций </a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field"  href="/operation"> Поиск по операциям </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="card h-100">
                    <h4 class="card-header font-weight-bold p-3 text-center">Отчеты</h4>
                    <div class="card-body d-flex flex-column">
                        <ul>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Баланс</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Отчет о прибылях и убытках</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Отчет о движении денежных средств</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Управленческие отчеты</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-lg-4">
                <div class="card h-100">
                    <h4 class="card-header font-weight-bold p-3 text-center">Печатные формы</h4>
                    <div class="card-body d-flex flex-column">
                        <ul>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Отчетные формы</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Ежедневный журнал операций</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Анкета-Заявление</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Протокол решения</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Кредитный договор (Договор залога)</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Расходный кассовый ордер</a>
                            </li>
                            <li class="pb-1">
                                <a class="btn btn btn-outline-dark my-2 my-sm-0 field" href="#">Приходный кассовый ордер</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <div class="modal" tabindex="-1" role="dialog" id="accountsSection">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Раздел счетов"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="accoutId" class="field" type="number" name="accoutId" placeholder="Код раздела" required>
                        </div >
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div >
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="accountsPlan">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "План счетов"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="termTypeId" class="field" type="number" name="termTypeId" placeholder="Раздел" required>
                        </div >
                        <div class="form-group">
                            <input id="account" class="field" type="text" name="account" placeholder="Счет" required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="operation">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Операции"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="termTypeId" class="field" type="number" name="termTypeId" placeholder="Код операции" required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div>
                        <div class="form-group">
                            <input id="debit" class="field" type="text" name="debit" placeholder="Дебет" required>
                        </div>
                        <div class="form-group">
                            <input id="credit" class="field" type="text" name="credit" placeholder="Кредит" required>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="unit">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Единица измерения"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="termTypeId" class="field" type="number" name="termTypeId"
                                   placeholder="Код единицы измерения" required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div>
                        <div class="form-group">
                            <input id="description" class="field" type="text" name="description" placeholder="Описание"
                                   required>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="depositKind">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Вид залога"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="termTypeId" class="field" type="number" name="termTypeId"
                                   placeholder="Код вида залога" required>
                        </div>
                        <div class="form-group">
                            <input id="depositType" class="field" type="text" name="depositType"
                                   placeholder="Тип залога" required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div>
                        <div class="form-group">
                            <input id="unit" class="field" type="text" name="unit" placeholder="Единица измерения"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="marketPrice" class="field" type="number" name="marketPrice"
                                   placeholder="Рыночная стоимость" required>
                        </div>
                        <div class="form-group">
                            <input id="assessedPrice" class="field" type="number" name="assessedPrice"
                                   placeholder="Оценочная стоимость" required>
                        </div>
                        <div class="form-group">
                            <input id="discount" class="field" type="number" name="discount" placeholder="Дисконт"
                                   required>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="depositTypes">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Тип залога"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="termTypeId" class="field" type="number" name="termTypeId"
                                   placeholder="Код типа залога" required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="termTypes">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Вид срока"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="termId" class="field" type="number" name="termId" placeholder="Код срока"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div>
                        <div class="form-group">
                            <input id="description" class="field" type="text" name="description" placeholder="Описание"
                                   required>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <div class="modal" tabindex="-1" role="dialog" id="responsibleEmployee">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Ответственный сотрудник"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="clientId" class="field" type="number" name="clientId" placeholder="Код клиента"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="surname" class="field" type="text" name="surname" placeholder="Фамилия" required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="number" name="name" placeholder="Имя" required>
                        </div>
                        <div class="form-group">
                            <input id="filial" class="field" type="number" name="filial" placeholder="Подразделение"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="employee" class="field" type="number" name="v" placeholder="Сотрудник компании"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="role" class="field" type="number" name="role" placeholder="Роль" required>
                        </div>
                        <div class="form-group">
                            <input id="employeeLogin" class="field" type="text" name="employeeLogin" placeholder="Логин"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="employeePassword" class="field" type="number" name="employeePassword"
                                   placeholder="Пароль" required>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <div class="modal" tabindex="-1" role="dialog" id="product">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Продукт"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="productId" class="field" type="number" name="productId"
                                   placeholder="Код продукта" required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div>
                        <div class="form-group">
                            <input id="minSumm" class="field" type="number" name="minSumm"
                                   placeholder="Минимальная сумма" required>
                        </div>
                        <div class="form-group">
                            <input id="minSumm" class="field" type="number" name="minSumm"
                                   placeholder="Максимальная сумма" required>
                        </div>
                        <div class="form-group">
                            <input id="minTerm" class="field" type="number" name="minTerm"
                                   placeholder="Минимальный срок" required>
                        </div>
                        <div class="form-group">
                            <input id="maxSumm" class="field" type="number" name="maxSumm"
                                   placeholder="Максимальный срок" required>
                        </div>
                        <div class="form-group">
                            <input id="termKind" class="field" type="text" name="termKind" placeholder="Вид срока"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="minInterest" class="field" type="number" name="v"
                                   placeholder="Минимальная ставка" required>
                        </div>
                        <div class="form-group">
                            <input id="maxInterest" class="field" type="number" name="maxInterest"
                                   placeholder="Максимальная ставка" required>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <div class="modal" tabindex="-1" role="dialog" id="filials">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Подразделение"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="roleId" class="field" type="number" name="roleId" placeholder="Код подразделения"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" role="dialog" id="rolen">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Роль"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="roleId" class="field" type="number" name="roleId" placeholder="Код роли"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div>
                        <div class="form-group">
                            <input id="accessLevel" class="field" type="text" name="accessLevel"
                                   placeholder="Уровень доступа" required>
                        </div>
                        <div class="form-group">
                            <input id="description" class="field" type="text" name="description" placeholder="Описание">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>



    <div class="modal" tabindex="-1" role="dialog" id="status">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Справочник "Состояние"</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="operationsId" class="field" type="number" name="operationsId"
                                   placeholder="Код состояния" required>
                        </div>
                        <div class="form-group">
                            <input id="name" class="field" type="text" name="name" placeholder="Название" required>
                        </div>
                        <div class="form-group">
                            <input id="clientDatabase" class="field" type="text" name="clientDatabase"
                                   placeholder="БД Клиенты" required>
                        </div>
                        <div class="form-group">
                            <input id="creditDatabase" class="field" type="text" name="creditDatabase"
                                   placeholder="БД Кредиты">
                        </div>
                        <div class="form-group">
                            <input id="depositDatabase" class="field" type="text" name="depositDatabase"
                                   placeholder="БД Обеспечение">
                        </div>
                        <div class="form-group">
                            <input id="scheduleDatabase" class="field" type="text" name="clientId"
                                   placeholder="БД График">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>




    <div class="modal" tabindex="-1" role="dialog" id="paymentSchedule">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">График платежей</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="creditId" class="field" type="number" name="creditId" placeholder="Код кредита"
                                   required>
                        </div>
                        <div class="form-group">
                            <label for="scheduleDate">Дата по графику</label>
                            <input id="scheduleDate" class="field" type="date" name="scheduleDate" required>
                        </div>
                        <div class="form-group">
                            <label for="repaymentDate">Дата погашения</label>
                            <input id="repaymentDate" class="field" type="date" name="repaymentDate" required>
                        </div>
                        <div class="form-group">
                            <input id="payment" class="field" type="number" name="payment" placeholder="Платеж"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="mainDebt" class="field" type="number" name="mainDebt" placeholder="Основной долг"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="interest" class="field" type="number" name="interest" placeholder="Проценты"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="mainDebtBalance" class="field" type="number" name="mainDebtBalance"
                                   placeholder="Остаток основного долга" required>
                        </div>
                        <div class="form-group">
                            <input id="status" class="field" type="text" name="status" placeholder="Состояние" required>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn modal-btn btn btn-outline-dark my-2 my-sm-0">Сохранить
                                карточку
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <div class="modal" tabindex="-1" role="dialog" id="depositData">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-dark p-2">
                    <h6 class="modal-title auto-title ml-auto mr-auto">Обеспечение</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body bg-light">
                    <form>
                        <div class="form-group">
                            <input id="depositId" class="field" type="number" name="depositId" placeholder="Код залога"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="creditId" class="field" type="number" name="creditId" placeholder="Код кредита"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="depositStatus" class="field" type="text" name="depositStatus"
                                   placeholder="Состояние залога" required>
                        </div>
                        <div class="form-group">
                            <input id="depositType" class="field" type="text" name="depositType"
                                   placeholder="Тип залога" required>
                        </div>
                        <div class="form-group">
                            <input id="depositKind" class="field" type="text" name="depositKind"
                                   placeholder="Вид залога" required>
                        </div>
                        <div class="form-group">
                            <input id="depositQuantity" class="field" type="number" name="depositQuantity"
                                   placeholder="Количество" required>
                        </div>
                        <div class="form-group">
                            <input id="unit" class="field" type="text" name="unit" placeholder="Единица измерения">
                        </div>
                        <div class="form-group">
                            <input id="marketPrice" class="field" type="number" name="marketPrice"
                                   placeholder="Рыночная стоимость" required>
                        </div>
                        <div class="form-group">
                            <input id="assessedPrice" class="field" type="number" name="assessedPrice"
                                   placeholder="Оценочная стоимость" required>
                        </div>
                        <div class="form-group">
                            <input id="discount" class="field" type="number" name="discount" placeholder="Дисконт"
                                   required>
                        </div>
                        <div class="form-group">
                            <input id="description" class="field" type="number" name="description"
                                   placeholder="Описание" required>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn modal-btn btn btn-outline-dark my-2 my-sm-0">Сохранить
                                карточку
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</@main.renderWith>