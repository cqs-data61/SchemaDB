# Generated from postgreSQLParser.g4 by ANTLR 4.9.2
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .postgreSQLParser import postgreSQLParser
else:
    from postgreSQLParser import postgreSQLParser

# This class defines a complete listener for a parse tree produced by postgreSQLParser.
class postgreSQLParserListener(ParseTreeListener):

    # Enter a parse tree produced by postgreSQLParser#sql.
    def enterSql(self, ctx:postgreSQLParser.SqlContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#sql.
    def exitSql(self, ctx:postgreSQLParser.SqlContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#qname_parser.
    def enterQname_parser(self, ctx:postgreSQLParser.Qname_parserContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#qname_parser.
    def exitQname_parser(self, ctx:postgreSQLParser.Qname_parserContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_args_parser.
    def enterFunction_args_parser(self, ctx:postgreSQLParser.Function_args_parserContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_args_parser.
    def exitFunction_args_parser(self, ctx:postgreSQLParser.Function_args_parserContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#vex_eof.
    def enterVex_eof(self, ctx:postgreSQLParser.Vex_eofContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#vex_eof.
    def exitVex_eof(self, ctx:postgreSQLParser.Vex_eofContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#plpgsql_function.
    def enterPlpgsql_function(self, ctx:postgreSQLParser.Plpgsql_functionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#plpgsql_function.
    def exitPlpgsql_function(self, ctx:postgreSQLParser.Plpgsql_functionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#plpgsql_function_test_list.
    def enterPlpgsql_function_test_list(self, ctx:postgreSQLParser.Plpgsql_function_test_listContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#plpgsql_function_test_list.
    def exitPlpgsql_function_test_list(self, ctx:postgreSQLParser.Plpgsql_function_test_listContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#statement.
    def enterStatement(self, ctx:postgreSQLParser.StatementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#statement.
    def exitStatement(self, ctx:postgreSQLParser.StatementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#data_statement.
    def enterData_statement(self, ctx:postgreSQLParser.Data_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#data_statement.
    def exitData_statement(self, ctx:postgreSQLParser.Data_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#script_statement.
    def enterScript_statement(self, ctx:postgreSQLParser.Script_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#script_statement.
    def exitScript_statement(self, ctx:postgreSQLParser.Script_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#script_transaction.
    def enterScript_transaction(self, ctx:postgreSQLParser.Script_transactionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#script_transaction.
    def exitScript_transaction(self, ctx:postgreSQLParser.Script_transactionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#transaction_mode.
    def enterTransaction_mode(self, ctx:postgreSQLParser.Transaction_modeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#transaction_mode.
    def exitTransaction_mode(self, ctx:postgreSQLParser.Transaction_modeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#lock_table.
    def enterLock_table(self, ctx:postgreSQLParser.Lock_tableContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#lock_table.
    def exitLock_table(self, ctx:postgreSQLParser.Lock_tableContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#lock_mode.
    def enterLock_mode(self, ctx:postgreSQLParser.Lock_modeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#lock_mode.
    def exitLock_mode(self, ctx:postgreSQLParser.Lock_modeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#script_additional.
    def enterScript_additional(self, ctx:postgreSQLParser.Script_additionalContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#script_additional.
    def exitScript_additional(self, ctx:postgreSQLParser.Script_additionalContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#additional_statement.
    def enterAdditional_statement(self, ctx:postgreSQLParser.Additional_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#additional_statement.
    def exitAdditional_statement(self, ctx:postgreSQLParser.Additional_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#explain_statement.
    def enterExplain_statement(self, ctx:postgreSQLParser.Explain_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#explain_statement.
    def exitExplain_statement(self, ctx:postgreSQLParser.Explain_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#explain_query.
    def enterExplain_query(self, ctx:postgreSQLParser.Explain_queryContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#explain_query.
    def exitExplain_query(self, ctx:postgreSQLParser.Explain_queryContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#execute_statement.
    def enterExecute_statement(self, ctx:postgreSQLParser.Execute_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#execute_statement.
    def exitExecute_statement(self, ctx:postgreSQLParser.Execute_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#declare_statement.
    def enterDeclare_statement(self, ctx:postgreSQLParser.Declare_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#declare_statement.
    def exitDeclare_statement(self, ctx:postgreSQLParser.Declare_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#show_statement.
    def enterShow_statement(self, ctx:postgreSQLParser.Show_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#show_statement.
    def exitShow_statement(self, ctx:postgreSQLParser.Show_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#explain_option.
    def enterExplain_option(self, ctx:postgreSQLParser.Explain_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#explain_option.
    def exitExplain_option(self, ctx:postgreSQLParser.Explain_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#user_name.
    def enterUser_name(self, ctx:postgreSQLParser.User_nameContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#user_name.
    def exitUser_name(self, ctx:postgreSQLParser.User_nameContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_cols_list.
    def enterTable_cols_list(self, ctx:postgreSQLParser.Table_cols_listContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_cols_list.
    def exitTable_cols_list(self, ctx:postgreSQLParser.Table_cols_listContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_cols.
    def enterTable_cols(self, ctx:postgreSQLParser.Table_colsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_cols.
    def exitTable_cols(self, ctx:postgreSQLParser.Table_colsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#vacuum_mode.
    def enterVacuum_mode(self, ctx:postgreSQLParser.Vacuum_modeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#vacuum_mode.
    def exitVacuum_mode(self, ctx:postgreSQLParser.Vacuum_modeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#vacuum_option.
    def enterVacuum_option(self, ctx:postgreSQLParser.Vacuum_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#vacuum_option.
    def exitVacuum_option(self, ctx:postgreSQLParser.Vacuum_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#analyze_mode.
    def enterAnalyze_mode(self, ctx:postgreSQLParser.Analyze_modeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#analyze_mode.
    def exitAnalyze_mode(self, ctx:postgreSQLParser.Analyze_modeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#boolean_value.
    def enterBoolean_value(self, ctx:postgreSQLParser.Boolean_valueContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#boolean_value.
    def exitBoolean_value(self, ctx:postgreSQLParser.Boolean_valueContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#fetch_move_direction.
    def enterFetch_move_direction(self, ctx:postgreSQLParser.Fetch_move_directionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#fetch_move_direction.
    def exitFetch_move_direction(self, ctx:postgreSQLParser.Fetch_move_directionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#schema_statement.
    def enterSchema_statement(self, ctx:postgreSQLParser.Schema_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#schema_statement.
    def exitSchema_statement(self, ctx:postgreSQLParser.Schema_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#schema_create.
    def enterSchema_create(self, ctx:postgreSQLParser.Schema_createContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#schema_create.
    def exitSchema_create(self, ctx:postgreSQLParser.Schema_createContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#schema_alter.
    def enterSchema_alter(self, ctx:postgreSQLParser.Schema_alterContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#schema_alter.
    def exitSchema_alter(self, ctx:postgreSQLParser.Schema_alterContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#schema_drop.
    def enterSchema_drop(self, ctx:postgreSQLParser.Schema_dropContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#schema_drop.
    def exitSchema_drop(self, ctx:postgreSQLParser.Schema_dropContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#schema_import.
    def enterSchema_import(self, ctx:postgreSQLParser.Schema_importContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#schema_import.
    def exitSchema_import(self, ctx:postgreSQLParser.Schema_importContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_function_statement.
    def enterAlter_function_statement(self, ctx:postgreSQLParser.Alter_function_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_function_statement.
    def exitAlter_function_statement(self, ctx:postgreSQLParser.Alter_function_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_aggregate_statement.
    def enterAlter_aggregate_statement(self, ctx:postgreSQLParser.Alter_aggregate_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_aggregate_statement.
    def exitAlter_aggregate_statement(self, ctx:postgreSQLParser.Alter_aggregate_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_extension_statement.
    def enterAlter_extension_statement(self, ctx:postgreSQLParser.Alter_extension_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_extension_statement.
    def exitAlter_extension_statement(self, ctx:postgreSQLParser.Alter_extension_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_extension_action.
    def enterAlter_extension_action(self, ctx:postgreSQLParser.Alter_extension_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_extension_action.
    def exitAlter_extension_action(self, ctx:postgreSQLParser.Alter_extension_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#extension_member_object.
    def enterExtension_member_object(self, ctx:postgreSQLParser.Extension_member_objectContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#extension_member_object.
    def exitExtension_member_object(self, ctx:postgreSQLParser.Extension_member_objectContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_schema_statement.
    def enterAlter_schema_statement(self, ctx:postgreSQLParser.Alter_schema_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_schema_statement.
    def exitAlter_schema_statement(self, ctx:postgreSQLParser.Alter_schema_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_language_statement.
    def enterAlter_language_statement(self, ctx:postgreSQLParser.Alter_language_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_language_statement.
    def exitAlter_language_statement(self, ctx:postgreSQLParser.Alter_language_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_table_statement.
    def enterAlter_table_statement(self, ctx:postgreSQLParser.Alter_table_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_table_statement.
    def exitAlter_table_statement(self, ctx:postgreSQLParser.Alter_table_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_action.
    def enterTable_action(self, ctx:postgreSQLParser.Table_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_action.
    def exitTable_action(self, ctx:postgreSQLParser.Table_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#column_action.
    def enterColumn_action(self, ctx:postgreSQLParser.Column_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#column_action.
    def exitColumn_action(self, ctx:postgreSQLParser.Column_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#identity_body.
    def enterIdentity_body(self, ctx:postgreSQLParser.Identity_bodyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#identity_body.
    def exitIdentity_body(self, ctx:postgreSQLParser.Identity_bodyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_identity.
    def enterAlter_identity(self, ctx:postgreSQLParser.Alter_identityContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_identity.
    def exitAlter_identity(self, ctx:postgreSQLParser.Alter_identityContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#storage_option.
    def enterStorage_option(self, ctx:postgreSQLParser.Storage_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#storage_option.
    def exitStorage_option(self, ctx:postgreSQLParser.Storage_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#validate_constraint.
    def enterValidate_constraint(self, ctx:postgreSQLParser.Validate_constraintContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#validate_constraint.
    def exitValidate_constraint(self, ctx:postgreSQLParser.Validate_constraintContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_constraint.
    def enterDrop_constraint(self, ctx:postgreSQLParser.Drop_constraintContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_constraint.
    def exitDrop_constraint(self, ctx:postgreSQLParser.Drop_constraintContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_deferrable.
    def enterTable_deferrable(self, ctx:postgreSQLParser.Table_deferrableContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_deferrable.
    def exitTable_deferrable(self, ctx:postgreSQLParser.Table_deferrableContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_initialy_immed.
    def enterTable_initialy_immed(self, ctx:postgreSQLParser.Table_initialy_immedContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_initialy_immed.
    def exitTable_initialy_immed(self, ctx:postgreSQLParser.Table_initialy_immedContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_actions_common.
    def enterFunction_actions_common(self, ctx:postgreSQLParser.Function_actions_commonContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_actions_common.
    def exitFunction_actions_common(self, ctx:postgreSQLParser.Function_actions_commonContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_def.
    def enterFunction_def(self, ctx:postgreSQLParser.Function_defContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_def.
    def exitFunction_def(self, ctx:postgreSQLParser.Function_defContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_index_statement.
    def enterAlter_index_statement(self, ctx:postgreSQLParser.Alter_index_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_index_statement.
    def exitAlter_index_statement(self, ctx:postgreSQLParser.Alter_index_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#index_def_action.
    def enterIndex_def_action(self, ctx:postgreSQLParser.Index_def_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#index_def_action.
    def exitIndex_def_action(self, ctx:postgreSQLParser.Index_def_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_default_privileges_statement.
    def enterAlter_default_privileges_statement(self, ctx:postgreSQLParser.Alter_default_privileges_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_default_privileges_statement.
    def exitAlter_default_privileges_statement(self, ctx:postgreSQLParser.Alter_default_privileges_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#abbreviated_grant_or_revoke.
    def enterAbbreviated_grant_or_revoke(self, ctx:postgreSQLParser.Abbreviated_grant_or_revokeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#abbreviated_grant_or_revoke.
    def exitAbbreviated_grant_or_revoke(self, ctx:postgreSQLParser.Abbreviated_grant_or_revokeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#grant_option_for.
    def enterGrant_option_for(self, ctx:postgreSQLParser.Grant_option_forContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#grant_option_for.
    def exitGrant_option_for(self, ctx:postgreSQLParser.Grant_option_forContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_sequence_statement.
    def enterAlter_sequence_statement(self, ctx:postgreSQLParser.Alter_sequence_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_sequence_statement.
    def exitAlter_sequence_statement(self, ctx:postgreSQLParser.Alter_sequence_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_view_statement.
    def enterAlter_view_statement(self, ctx:postgreSQLParser.Alter_view_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_view_statement.
    def exitAlter_view_statement(self, ctx:postgreSQLParser.Alter_view_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_view_action.
    def enterAlter_view_action(self, ctx:postgreSQLParser.Alter_view_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_view_action.
    def exitAlter_view_action(self, ctx:postgreSQLParser.Alter_view_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_materialized_view_statement.
    def enterAlter_materialized_view_statement(self, ctx:postgreSQLParser.Alter_materialized_view_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_materialized_view_statement.
    def exitAlter_materialized_view_statement(self, ctx:postgreSQLParser.Alter_materialized_view_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_materialized_view_action.
    def enterAlter_materialized_view_action(self, ctx:postgreSQLParser.Alter_materialized_view_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_materialized_view_action.
    def exitAlter_materialized_view_action(self, ctx:postgreSQLParser.Alter_materialized_view_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#materialized_view_action.
    def enterMaterialized_view_action(self, ctx:postgreSQLParser.Materialized_view_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#materialized_view_action.
    def exitMaterialized_view_action(self, ctx:postgreSQLParser.Materialized_view_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_event_trigger_statement.
    def enterAlter_event_trigger_statement(self, ctx:postgreSQLParser.Alter_event_trigger_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_event_trigger_statement.
    def exitAlter_event_trigger_statement(self, ctx:postgreSQLParser.Alter_event_trigger_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_event_trigger_action.
    def enterAlter_event_trigger_action(self, ctx:postgreSQLParser.Alter_event_trigger_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_event_trigger_action.
    def exitAlter_event_trigger_action(self, ctx:postgreSQLParser.Alter_event_trigger_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_type_statement.
    def enterAlter_type_statement(self, ctx:postgreSQLParser.Alter_type_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_type_statement.
    def exitAlter_type_statement(self, ctx:postgreSQLParser.Alter_type_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_domain_statement.
    def enterAlter_domain_statement(self, ctx:postgreSQLParser.Alter_domain_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_domain_statement.
    def exitAlter_domain_statement(self, ctx:postgreSQLParser.Alter_domain_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_server_statement.
    def enterAlter_server_statement(self, ctx:postgreSQLParser.Alter_server_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_server_statement.
    def exitAlter_server_statement(self, ctx:postgreSQLParser.Alter_server_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_server_action.
    def enterAlter_server_action(self, ctx:postgreSQLParser.Alter_server_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_server_action.
    def exitAlter_server_action(self, ctx:postgreSQLParser.Alter_server_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_fts_statement.
    def enterAlter_fts_statement(self, ctx:postgreSQLParser.Alter_fts_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_fts_statement.
    def exitAlter_fts_statement(self, ctx:postgreSQLParser.Alter_fts_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_fts_configuration.
    def enterAlter_fts_configuration(self, ctx:postgreSQLParser.Alter_fts_configurationContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_fts_configuration.
    def exitAlter_fts_configuration(self, ctx:postgreSQLParser.Alter_fts_configurationContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#type_action.
    def enterType_action(self, ctx:postgreSQLParser.Type_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#type_action.
    def exitType_action(self, ctx:postgreSQLParser.Type_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#type_property.
    def enterType_property(self, ctx:postgreSQLParser.Type_propertyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#type_property.
    def exitType_property(self, ctx:postgreSQLParser.Type_propertyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#set_def_column.
    def enterSet_def_column(self, ctx:postgreSQLParser.Set_def_columnContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#set_def_column.
    def exitSet_def_column(self, ctx:postgreSQLParser.Set_def_columnContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_def.
    def enterDrop_def(self, ctx:postgreSQLParser.Drop_defContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_def.
    def exitDrop_def(self, ctx:postgreSQLParser.Drop_defContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_index_statement.
    def enterCreate_index_statement(self, ctx:postgreSQLParser.Create_index_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_index_statement.
    def exitCreate_index_statement(self, ctx:postgreSQLParser.Create_index_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#index_rest.
    def enterIndex_rest(self, ctx:postgreSQLParser.Index_restContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#index_rest.
    def exitIndex_rest(self, ctx:postgreSQLParser.Index_restContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#index_sort.
    def enterIndex_sort(self, ctx:postgreSQLParser.Index_sortContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#index_sort.
    def exitIndex_sort(self, ctx:postgreSQLParser.Index_sortContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#index_column.
    def enterIndex_column(self, ctx:postgreSQLParser.Index_columnContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#index_column.
    def exitIndex_column(self, ctx:postgreSQLParser.Index_columnContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#including_index.
    def enterIncluding_index(self, ctx:postgreSQLParser.Including_indexContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#including_index.
    def exitIncluding_index(self, ctx:postgreSQLParser.Including_indexContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#index_where.
    def enterIndex_where(self, ctx:postgreSQLParser.Index_whereContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#index_where.
    def exitIndex_where(self, ctx:postgreSQLParser.Index_whereContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_extension_statement.
    def enterCreate_extension_statement(self, ctx:postgreSQLParser.Create_extension_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_extension_statement.
    def exitCreate_extension_statement(self, ctx:postgreSQLParser.Create_extension_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_language_statement.
    def enterCreate_language_statement(self, ctx:postgreSQLParser.Create_language_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_language_statement.
    def exitCreate_language_statement(self, ctx:postgreSQLParser.Create_language_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_event_trigger_statement.
    def enterCreate_event_trigger_statement(self, ctx:postgreSQLParser.Create_event_trigger_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_event_trigger_statement.
    def exitCreate_event_trigger_statement(self, ctx:postgreSQLParser.Create_event_trigger_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_type_statement.
    def enterCreate_type_statement(self, ctx:postgreSQLParser.Create_type_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_type_statement.
    def exitCreate_type_statement(self, ctx:postgreSQLParser.Create_type_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_domain_statement.
    def enterCreate_domain_statement(self, ctx:postgreSQLParser.Create_domain_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_domain_statement.
    def exitCreate_domain_statement(self, ctx:postgreSQLParser.Create_domain_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_server_statement.
    def enterCreate_server_statement(self, ctx:postgreSQLParser.Create_server_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_server_statement.
    def exitCreate_server_statement(self, ctx:postgreSQLParser.Create_server_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_fts_dictionary_statement.
    def enterCreate_fts_dictionary_statement(self, ctx:postgreSQLParser.Create_fts_dictionary_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_fts_dictionary_statement.
    def exitCreate_fts_dictionary_statement(self, ctx:postgreSQLParser.Create_fts_dictionary_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#option_with_value.
    def enterOption_with_value(self, ctx:postgreSQLParser.Option_with_valueContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#option_with_value.
    def exitOption_with_value(self, ctx:postgreSQLParser.Option_with_valueContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_fts_configuration_statement.
    def enterCreate_fts_configuration_statement(self, ctx:postgreSQLParser.Create_fts_configuration_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_fts_configuration_statement.
    def exitCreate_fts_configuration_statement(self, ctx:postgreSQLParser.Create_fts_configuration_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_fts_template_statement.
    def enterCreate_fts_template_statement(self, ctx:postgreSQLParser.Create_fts_template_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_fts_template_statement.
    def exitCreate_fts_template_statement(self, ctx:postgreSQLParser.Create_fts_template_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_fts_parser_statement.
    def enterCreate_fts_parser_statement(self, ctx:postgreSQLParser.Create_fts_parser_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_fts_parser_statement.
    def exitCreate_fts_parser_statement(self, ctx:postgreSQLParser.Create_fts_parser_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_collation_statement.
    def enterCreate_collation_statement(self, ctx:postgreSQLParser.Create_collation_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_collation_statement.
    def exitCreate_collation_statement(self, ctx:postgreSQLParser.Create_collation_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_collation_statement.
    def enterAlter_collation_statement(self, ctx:postgreSQLParser.Alter_collation_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_collation_statement.
    def exitAlter_collation_statement(self, ctx:postgreSQLParser.Alter_collation_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#collation_option.
    def enterCollation_option(self, ctx:postgreSQLParser.Collation_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#collation_option.
    def exitCollation_option(self, ctx:postgreSQLParser.Collation_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_user_mapping_statement.
    def enterCreate_user_mapping_statement(self, ctx:postgreSQLParser.Create_user_mapping_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_user_mapping_statement.
    def exitCreate_user_mapping_statement(self, ctx:postgreSQLParser.Create_user_mapping_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_user_mapping_statement.
    def enterAlter_user_mapping_statement(self, ctx:postgreSQLParser.Alter_user_mapping_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_user_mapping_statement.
    def exitAlter_user_mapping_statement(self, ctx:postgreSQLParser.Alter_user_mapping_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_user_or_role_statement.
    def enterAlter_user_or_role_statement(self, ctx:postgreSQLParser.Alter_user_or_role_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_user_or_role_statement.
    def exitAlter_user_or_role_statement(self, ctx:postgreSQLParser.Alter_user_or_role_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_user_or_role_set_reset.
    def enterAlter_user_or_role_set_reset(self, ctx:postgreSQLParser.Alter_user_or_role_set_resetContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_user_or_role_set_reset.
    def exitAlter_user_or_role_set_reset(self, ctx:postgreSQLParser.Alter_user_or_role_set_resetContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#set_reset_parameter.
    def enterSet_reset_parameter(self, ctx:postgreSQLParser.Set_reset_parameterContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#set_reset_parameter.
    def exitSet_reset_parameter(self, ctx:postgreSQLParser.Set_reset_parameterContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_group_statement.
    def enterAlter_group_statement(self, ctx:postgreSQLParser.Alter_group_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_group_statement.
    def exitAlter_group_statement(self, ctx:postgreSQLParser.Alter_group_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_group_action.
    def enterAlter_group_action(self, ctx:postgreSQLParser.Alter_group_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_group_action.
    def exitAlter_group_action(self, ctx:postgreSQLParser.Alter_group_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_tablespace_statement.
    def enterAlter_tablespace_statement(self, ctx:postgreSQLParser.Alter_tablespace_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_tablespace_statement.
    def exitAlter_tablespace_statement(self, ctx:postgreSQLParser.Alter_tablespace_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_owner_statement.
    def enterAlter_owner_statement(self, ctx:postgreSQLParser.Alter_owner_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_owner_statement.
    def exitAlter_owner_statement(self, ctx:postgreSQLParser.Alter_owner_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_tablespace_action.
    def enterAlter_tablespace_action(self, ctx:postgreSQLParser.Alter_tablespace_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_tablespace_action.
    def exitAlter_tablespace_action(self, ctx:postgreSQLParser.Alter_tablespace_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_statistics_statement.
    def enterAlter_statistics_statement(self, ctx:postgreSQLParser.Alter_statistics_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_statistics_statement.
    def exitAlter_statistics_statement(self, ctx:postgreSQLParser.Alter_statistics_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#set_statistics.
    def enterSet_statistics(self, ctx:postgreSQLParser.Set_statisticsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#set_statistics.
    def exitSet_statistics(self, ctx:postgreSQLParser.Set_statisticsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_foreign_data_wrapper.
    def enterAlter_foreign_data_wrapper(self, ctx:postgreSQLParser.Alter_foreign_data_wrapperContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_foreign_data_wrapper.
    def exitAlter_foreign_data_wrapper(self, ctx:postgreSQLParser.Alter_foreign_data_wrapperContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_foreign_data_wrapper_action.
    def enterAlter_foreign_data_wrapper_action(self, ctx:postgreSQLParser.Alter_foreign_data_wrapper_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_foreign_data_wrapper_action.
    def exitAlter_foreign_data_wrapper_action(self, ctx:postgreSQLParser.Alter_foreign_data_wrapper_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_operator_statement.
    def enterAlter_operator_statement(self, ctx:postgreSQLParser.Alter_operator_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_operator_statement.
    def exitAlter_operator_statement(self, ctx:postgreSQLParser.Alter_operator_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_operator_action.
    def enterAlter_operator_action(self, ctx:postgreSQLParser.Alter_operator_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_operator_action.
    def exitAlter_operator_action(self, ctx:postgreSQLParser.Alter_operator_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#operator_set_restrict_join.
    def enterOperator_set_restrict_join(self, ctx:postgreSQLParser.Operator_set_restrict_joinContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#operator_set_restrict_join.
    def exitOperator_set_restrict_join(self, ctx:postgreSQLParser.Operator_set_restrict_joinContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_user_mapping_statement.
    def enterDrop_user_mapping_statement(self, ctx:postgreSQLParser.Drop_user_mapping_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_user_mapping_statement.
    def exitDrop_user_mapping_statement(self, ctx:postgreSQLParser.Drop_user_mapping_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_owned_statement.
    def enterDrop_owned_statement(self, ctx:postgreSQLParser.Drop_owned_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_owned_statement.
    def exitDrop_owned_statement(self, ctx:postgreSQLParser.Drop_owned_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_operator_statement.
    def enterDrop_operator_statement(self, ctx:postgreSQLParser.Drop_operator_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_operator_statement.
    def exitDrop_operator_statement(self, ctx:postgreSQLParser.Drop_operator_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#target_operator.
    def enterTarget_operator(self, ctx:postgreSQLParser.Target_operatorContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#target_operator.
    def exitTarget_operator(self, ctx:postgreSQLParser.Target_operatorContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#domain_constraint.
    def enterDomain_constraint(self, ctx:postgreSQLParser.Domain_constraintContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#domain_constraint.
    def exitDomain_constraint(self, ctx:postgreSQLParser.Domain_constraintContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_transform_statement.
    def enterCreate_transform_statement(self, ctx:postgreSQLParser.Create_transform_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_transform_statement.
    def exitCreate_transform_statement(self, ctx:postgreSQLParser.Create_transform_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_access_method_statement.
    def enterCreate_access_method_statement(self, ctx:postgreSQLParser.Create_access_method_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_access_method_statement.
    def exitCreate_access_method_statement(self, ctx:postgreSQLParser.Create_access_method_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_user_or_role_statement.
    def enterCreate_user_or_role_statement(self, ctx:postgreSQLParser.Create_user_or_role_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_user_or_role_statement.
    def exitCreate_user_or_role_statement(self, ctx:postgreSQLParser.Create_user_or_role_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#user_or_role_option.
    def enterUser_or_role_option(self, ctx:postgreSQLParser.User_or_role_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#user_or_role_option.
    def exitUser_or_role_option(self, ctx:postgreSQLParser.User_or_role_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#user_or_role_option_for_alter.
    def enterUser_or_role_option_for_alter(self, ctx:postgreSQLParser.User_or_role_option_for_alterContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#user_or_role_option_for_alter.
    def exitUser_or_role_option_for_alter(self, ctx:postgreSQLParser.User_or_role_option_for_alterContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#user_or_role_or_group_common_option.
    def enterUser_or_role_or_group_common_option(self, ctx:postgreSQLParser.User_or_role_or_group_common_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#user_or_role_or_group_common_option.
    def exitUser_or_role_or_group_common_option(self, ctx:postgreSQLParser.User_or_role_or_group_common_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#user_or_role_common_option.
    def enterUser_or_role_common_option(self, ctx:postgreSQLParser.User_or_role_common_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#user_or_role_common_option.
    def exitUser_or_role_common_option(self, ctx:postgreSQLParser.User_or_role_common_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#user_or_role_or_group_option_for_create.
    def enterUser_or_role_or_group_option_for_create(self, ctx:postgreSQLParser.User_or_role_or_group_option_for_createContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#user_or_role_or_group_option_for_create.
    def exitUser_or_role_or_group_option_for_create(self, ctx:postgreSQLParser.User_or_role_or_group_option_for_createContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_group_statement.
    def enterCreate_group_statement(self, ctx:postgreSQLParser.Create_group_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_group_statement.
    def exitCreate_group_statement(self, ctx:postgreSQLParser.Create_group_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#group_option.
    def enterGroup_option(self, ctx:postgreSQLParser.Group_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#group_option.
    def exitGroup_option(self, ctx:postgreSQLParser.Group_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_tablespace_statement.
    def enterCreate_tablespace_statement(self, ctx:postgreSQLParser.Create_tablespace_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_tablespace_statement.
    def exitCreate_tablespace_statement(self, ctx:postgreSQLParser.Create_tablespace_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_statistics_statement.
    def enterCreate_statistics_statement(self, ctx:postgreSQLParser.Create_statistics_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_statistics_statement.
    def exitCreate_statistics_statement(self, ctx:postgreSQLParser.Create_statistics_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_foreign_data_wrapper_statement.
    def enterCreate_foreign_data_wrapper_statement(self, ctx:postgreSQLParser.Create_foreign_data_wrapper_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_foreign_data_wrapper_statement.
    def exitCreate_foreign_data_wrapper_statement(self, ctx:postgreSQLParser.Create_foreign_data_wrapper_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#option_without_equal.
    def enterOption_without_equal(self, ctx:postgreSQLParser.Option_without_equalContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#option_without_equal.
    def exitOption_without_equal(self, ctx:postgreSQLParser.Option_without_equalContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_operator_statement.
    def enterCreate_operator_statement(self, ctx:postgreSQLParser.Create_operator_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_operator_statement.
    def exitCreate_operator_statement(self, ctx:postgreSQLParser.Create_operator_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#operator_name.
    def enterOperator_name(self, ctx:postgreSQLParser.Operator_nameContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#operator_name.
    def exitOperator_name(self, ctx:postgreSQLParser.Operator_nameContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#operator_option.
    def enterOperator_option(self, ctx:postgreSQLParser.Operator_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#operator_option.
    def exitOperator_option(self, ctx:postgreSQLParser.Operator_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_aggregate_statement.
    def enterCreate_aggregate_statement(self, ctx:postgreSQLParser.Create_aggregate_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_aggregate_statement.
    def exitCreate_aggregate_statement(self, ctx:postgreSQLParser.Create_aggregate_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#aggregate_param.
    def enterAggregate_param(self, ctx:postgreSQLParser.Aggregate_paramContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#aggregate_param.
    def exitAggregate_param(self, ctx:postgreSQLParser.Aggregate_paramContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#set_statement.
    def enterSet_statement(self, ctx:postgreSQLParser.Set_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#set_statement.
    def exitSet_statement(self, ctx:postgreSQLParser.Set_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#set_action.
    def enterSet_action(self, ctx:postgreSQLParser.Set_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#set_action.
    def exitSet_action(self, ctx:postgreSQLParser.Set_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#session_local_option.
    def enterSession_local_option(self, ctx:postgreSQLParser.Session_local_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#session_local_option.
    def exitSession_local_option(self, ctx:postgreSQLParser.Session_local_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#set_statement_value.
    def enterSet_statement_value(self, ctx:postgreSQLParser.Set_statement_valueContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#set_statement_value.
    def exitSet_statement_value(self, ctx:postgreSQLParser.Set_statement_valueContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_rewrite_statement.
    def enterCreate_rewrite_statement(self, ctx:postgreSQLParser.Create_rewrite_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_rewrite_statement.
    def exitCreate_rewrite_statement(self, ctx:postgreSQLParser.Create_rewrite_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#rewrite_command.
    def enterRewrite_command(self, ctx:postgreSQLParser.Rewrite_commandContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#rewrite_command.
    def exitRewrite_command(self, ctx:postgreSQLParser.Rewrite_commandContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_trigger_statement.
    def enterCreate_trigger_statement(self, ctx:postgreSQLParser.Create_trigger_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_trigger_statement.
    def exitCreate_trigger_statement(self, ctx:postgreSQLParser.Create_trigger_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#trigger_referencing.
    def enterTrigger_referencing(self, ctx:postgreSQLParser.Trigger_referencingContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#trigger_referencing.
    def exitTrigger_referencing(self, ctx:postgreSQLParser.Trigger_referencingContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#when_trigger.
    def enterWhen_trigger(self, ctx:postgreSQLParser.When_triggerContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#when_trigger.
    def exitWhen_trigger(self, ctx:postgreSQLParser.When_triggerContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#rule_common.
    def enterRule_common(self, ctx:postgreSQLParser.Rule_commonContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#rule_common.
    def exitRule_common(self, ctx:postgreSQLParser.Rule_commonContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#rule_member_object.
    def enterRule_member_object(self, ctx:postgreSQLParser.Rule_member_objectContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#rule_member_object.
    def exitRule_member_object(self, ctx:postgreSQLParser.Rule_member_objectContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#columns_permissions.
    def enterColumns_permissions(self, ctx:postgreSQLParser.Columns_permissionsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#columns_permissions.
    def exitColumns_permissions(self, ctx:postgreSQLParser.Columns_permissionsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_column_privileges.
    def enterTable_column_privileges(self, ctx:postgreSQLParser.Table_column_privilegesContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_column_privileges.
    def exitTable_column_privileges(self, ctx:postgreSQLParser.Table_column_privilegesContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#permissions.
    def enterPermissions(self, ctx:postgreSQLParser.PermissionsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#permissions.
    def exitPermissions(self, ctx:postgreSQLParser.PermissionsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#permission.
    def enterPermission(self, ctx:postgreSQLParser.PermissionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#permission.
    def exitPermission(self, ctx:postgreSQLParser.PermissionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#other_rules.
    def enterOther_rules(self, ctx:postgreSQLParser.Other_rulesContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#other_rules.
    def exitOther_rules(self, ctx:postgreSQLParser.Other_rulesContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#grant_to_rule.
    def enterGrant_to_rule(self, ctx:postgreSQLParser.Grant_to_ruleContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#grant_to_rule.
    def exitGrant_to_rule(self, ctx:postgreSQLParser.Grant_to_ruleContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#revoke_from_cascade_restrict.
    def enterRevoke_from_cascade_restrict(self, ctx:postgreSQLParser.Revoke_from_cascade_restrictContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#revoke_from_cascade_restrict.
    def exitRevoke_from_cascade_restrict(self, ctx:postgreSQLParser.Revoke_from_cascade_restrictContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#roles_names.
    def enterRoles_names(self, ctx:postgreSQLParser.Roles_namesContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#roles_names.
    def exitRoles_names(self, ctx:postgreSQLParser.Roles_namesContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#role_name_with_group.
    def enterRole_name_with_group(self, ctx:postgreSQLParser.Role_name_with_groupContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#role_name_with_group.
    def exitRole_name_with_group(self, ctx:postgreSQLParser.Role_name_with_groupContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#comment_on_statement.
    def enterComment_on_statement(self, ctx:postgreSQLParser.Comment_on_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#comment_on_statement.
    def exitComment_on_statement(self, ctx:postgreSQLParser.Comment_on_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#security_label.
    def enterSecurity_label(self, ctx:postgreSQLParser.Security_labelContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#security_label.
    def exitSecurity_label(self, ctx:postgreSQLParser.Security_labelContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#comment_member_object.
    def enterComment_member_object(self, ctx:postgreSQLParser.Comment_member_objectContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#comment_member_object.
    def exitComment_member_object(self, ctx:postgreSQLParser.Comment_member_objectContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#label_member_object.
    def enterLabel_member_object(self, ctx:postgreSQLParser.Label_member_objectContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#label_member_object.
    def exitLabel_member_object(self, ctx:postgreSQLParser.Label_member_objectContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_function_statement.
    def enterCreate_function_statement(self, ctx:postgreSQLParser.Create_function_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_function_statement.
    def exitCreate_function_statement(self, ctx:postgreSQLParser.Create_function_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_funct_params.
    def enterCreate_funct_params(self, ctx:postgreSQLParser.Create_funct_paramsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_funct_params.
    def exitCreate_funct_params(self, ctx:postgreSQLParser.Create_funct_paramsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#transform_for_type.
    def enterTransform_for_type(self, ctx:postgreSQLParser.Transform_for_typeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#transform_for_type.
    def exitTransform_for_type(self, ctx:postgreSQLParser.Transform_for_typeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_ret_table.
    def enterFunction_ret_table(self, ctx:postgreSQLParser.Function_ret_tableContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_ret_table.
    def exitFunction_ret_table(self, ctx:postgreSQLParser.Function_ret_tableContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_column_name_type.
    def enterFunction_column_name_type(self, ctx:postgreSQLParser.Function_column_name_typeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_column_name_type.
    def exitFunction_column_name_type(self, ctx:postgreSQLParser.Function_column_name_typeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_parameters.
    def enterFunction_parameters(self, ctx:postgreSQLParser.Function_parametersContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_parameters.
    def exitFunction_parameters(self, ctx:postgreSQLParser.Function_parametersContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_args.
    def enterFunction_args(self, ctx:postgreSQLParser.Function_argsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_args.
    def exitFunction_args(self, ctx:postgreSQLParser.Function_argsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#agg_order.
    def enterAgg_order(self, ctx:postgreSQLParser.Agg_orderContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#agg_order.
    def exitAgg_order(self, ctx:postgreSQLParser.Agg_orderContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#character_string.
    def enterCharacter_string(self, ctx:postgreSQLParser.Character_stringContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#character_string.
    def exitCharacter_string(self, ctx:postgreSQLParser.Character_stringContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_arguments.
    def enterFunction_arguments(self, ctx:postgreSQLParser.Function_argumentsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_arguments.
    def exitFunction_arguments(self, ctx:postgreSQLParser.Function_argumentsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#argmode.
    def enterArgmode(self, ctx:postgreSQLParser.ArgmodeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#argmode.
    def exitArgmode(self, ctx:postgreSQLParser.ArgmodeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_sequence_statement.
    def enterCreate_sequence_statement(self, ctx:postgreSQLParser.Create_sequence_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_sequence_statement.
    def exitCreate_sequence_statement(self, ctx:postgreSQLParser.Create_sequence_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#sequence_body.
    def enterSequence_body(self, ctx:postgreSQLParser.Sequence_bodyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#sequence_body.
    def exitSequence_body(self, ctx:postgreSQLParser.Sequence_bodyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#signed_number_literal.
    def enterSigned_number_literal(self, ctx:postgreSQLParser.Signed_number_literalContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#signed_number_literal.
    def exitSigned_number_literal(self, ctx:postgreSQLParser.Signed_number_literalContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#signed_numerical_literal.
    def enterSigned_numerical_literal(self, ctx:postgreSQLParser.Signed_numerical_literalContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#signed_numerical_literal.
    def exitSigned_numerical_literal(self, ctx:postgreSQLParser.Signed_numerical_literalContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#sign.
    def enterSign(self, ctx:postgreSQLParser.SignContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#sign.
    def exitSign(self, ctx:postgreSQLParser.SignContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_schema_statement.
    def enterCreate_schema_statement(self, ctx:postgreSQLParser.Create_schema_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_schema_statement.
    def exitCreate_schema_statement(self, ctx:postgreSQLParser.Create_schema_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_policy_statement.
    def enterCreate_policy_statement(self, ctx:postgreSQLParser.Create_policy_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_policy_statement.
    def exitCreate_policy_statement(self, ctx:postgreSQLParser.Create_policy_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_policy_statement.
    def enterAlter_policy_statement(self, ctx:postgreSQLParser.Alter_policy_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_policy_statement.
    def exitAlter_policy_statement(self, ctx:postgreSQLParser.Alter_policy_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_policy_statement.
    def enterDrop_policy_statement(self, ctx:postgreSQLParser.Drop_policy_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_policy_statement.
    def exitDrop_policy_statement(self, ctx:postgreSQLParser.Drop_policy_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_subscription_statement.
    def enterCreate_subscription_statement(self, ctx:postgreSQLParser.Create_subscription_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_subscription_statement.
    def exitCreate_subscription_statement(self, ctx:postgreSQLParser.Create_subscription_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_subscription_statement.
    def enterAlter_subscription_statement(self, ctx:postgreSQLParser.Alter_subscription_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_subscription_statement.
    def exitAlter_subscription_statement(self, ctx:postgreSQLParser.Alter_subscription_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_subscription_action.
    def enterAlter_subscription_action(self, ctx:postgreSQLParser.Alter_subscription_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_subscription_action.
    def exitAlter_subscription_action(self, ctx:postgreSQLParser.Alter_subscription_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_cast_statement.
    def enterCreate_cast_statement(self, ctx:postgreSQLParser.Create_cast_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_cast_statement.
    def exitCreate_cast_statement(self, ctx:postgreSQLParser.Create_cast_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_cast_statement.
    def enterDrop_cast_statement(self, ctx:postgreSQLParser.Drop_cast_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_cast_statement.
    def exitDrop_cast_statement(self, ctx:postgreSQLParser.Drop_cast_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_operator_family_statement.
    def enterCreate_operator_family_statement(self, ctx:postgreSQLParser.Create_operator_family_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_operator_family_statement.
    def exitCreate_operator_family_statement(self, ctx:postgreSQLParser.Create_operator_family_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_operator_family_statement.
    def enterAlter_operator_family_statement(self, ctx:postgreSQLParser.Alter_operator_family_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_operator_family_statement.
    def exitAlter_operator_family_statement(self, ctx:postgreSQLParser.Alter_operator_family_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#operator_family_action.
    def enterOperator_family_action(self, ctx:postgreSQLParser.Operator_family_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#operator_family_action.
    def exitOperator_family_action(self, ctx:postgreSQLParser.Operator_family_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#add_operator_to_family.
    def enterAdd_operator_to_family(self, ctx:postgreSQLParser.Add_operator_to_familyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#add_operator_to_family.
    def exitAdd_operator_to_family(self, ctx:postgreSQLParser.Add_operator_to_familyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_operator_from_family.
    def enterDrop_operator_from_family(self, ctx:postgreSQLParser.Drop_operator_from_familyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_operator_from_family.
    def exitDrop_operator_from_family(self, ctx:postgreSQLParser.Drop_operator_from_familyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_operator_family_statement.
    def enterDrop_operator_family_statement(self, ctx:postgreSQLParser.Drop_operator_family_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_operator_family_statement.
    def exitDrop_operator_family_statement(self, ctx:postgreSQLParser.Drop_operator_family_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_operator_class_statement.
    def enterCreate_operator_class_statement(self, ctx:postgreSQLParser.Create_operator_class_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_operator_class_statement.
    def exitCreate_operator_class_statement(self, ctx:postgreSQLParser.Create_operator_class_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_operator_class_option.
    def enterCreate_operator_class_option(self, ctx:postgreSQLParser.Create_operator_class_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_operator_class_option.
    def exitCreate_operator_class_option(self, ctx:postgreSQLParser.Create_operator_class_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_operator_class_statement.
    def enterAlter_operator_class_statement(self, ctx:postgreSQLParser.Alter_operator_class_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_operator_class_statement.
    def exitAlter_operator_class_statement(self, ctx:postgreSQLParser.Alter_operator_class_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_operator_class_statement.
    def enterDrop_operator_class_statement(self, ctx:postgreSQLParser.Drop_operator_class_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_operator_class_statement.
    def exitDrop_operator_class_statement(self, ctx:postgreSQLParser.Drop_operator_class_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_conversion_statement.
    def enterCreate_conversion_statement(self, ctx:postgreSQLParser.Create_conversion_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_conversion_statement.
    def exitCreate_conversion_statement(self, ctx:postgreSQLParser.Create_conversion_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_conversion_statement.
    def enterAlter_conversion_statement(self, ctx:postgreSQLParser.Alter_conversion_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_conversion_statement.
    def exitAlter_conversion_statement(self, ctx:postgreSQLParser.Alter_conversion_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_publication_statement.
    def enterCreate_publication_statement(self, ctx:postgreSQLParser.Create_publication_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_publication_statement.
    def exitCreate_publication_statement(self, ctx:postgreSQLParser.Create_publication_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_publication_statement.
    def enterAlter_publication_statement(self, ctx:postgreSQLParser.Alter_publication_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_publication_statement.
    def exitAlter_publication_statement(self, ctx:postgreSQLParser.Alter_publication_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_publication_action.
    def enterAlter_publication_action(self, ctx:postgreSQLParser.Alter_publication_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_publication_action.
    def exitAlter_publication_action(self, ctx:postgreSQLParser.Alter_publication_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#only_table_multiply.
    def enterOnly_table_multiply(self, ctx:postgreSQLParser.Only_table_multiplyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#only_table_multiply.
    def exitOnly_table_multiply(self, ctx:postgreSQLParser.Only_table_multiplyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_trigger_statement.
    def enterAlter_trigger_statement(self, ctx:postgreSQLParser.Alter_trigger_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_trigger_statement.
    def exitAlter_trigger_statement(self, ctx:postgreSQLParser.Alter_trigger_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_rule_statement.
    def enterAlter_rule_statement(self, ctx:postgreSQLParser.Alter_rule_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_rule_statement.
    def exitAlter_rule_statement(self, ctx:postgreSQLParser.Alter_rule_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#copy_statement.
    def enterCopy_statement(self, ctx:postgreSQLParser.Copy_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#copy_statement.
    def exitCopy_statement(self, ctx:postgreSQLParser.Copy_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#copy_from_statement.
    def enterCopy_from_statement(self, ctx:postgreSQLParser.Copy_from_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#copy_from_statement.
    def exitCopy_from_statement(self, ctx:postgreSQLParser.Copy_from_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#copy_to_statement.
    def enterCopy_to_statement(self, ctx:postgreSQLParser.Copy_to_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#copy_to_statement.
    def exitCopy_to_statement(self, ctx:postgreSQLParser.Copy_to_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#copy_option_list.
    def enterCopy_option_list(self, ctx:postgreSQLParser.Copy_option_listContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#copy_option_list.
    def exitCopy_option_list(self, ctx:postgreSQLParser.Copy_option_listContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#copy_option.
    def enterCopy_option(self, ctx:postgreSQLParser.Copy_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#copy_option.
    def exitCopy_option(self, ctx:postgreSQLParser.Copy_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_view_statement.
    def enterCreate_view_statement(self, ctx:postgreSQLParser.Create_view_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_view_statement.
    def exitCreate_view_statement(self, ctx:postgreSQLParser.Create_view_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#if_exists.
    def enterIf_exists(self, ctx:postgreSQLParser.If_existsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#if_exists.
    def exitIf_exists(self, ctx:postgreSQLParser.If_existsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#if_not_exists.
    def enterIf_not_exists(self, ctx:postgreSQLParser.If_not_existsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#if_not_exists.
    def exitIf_not_exists(self, ctx:postgreSQLParser.If_not_existsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#view_columns.
    def enterView_columns(self, ctx:postgreSQLParser.View_columnsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#view_columns.
    def exitView_columns(self, ctx:postgreSQLParser.View_columnsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#with_check_option.
    def enterWith_check_option(self, ctx:postgreSQLParser.With_check_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#with_check_option.
    def exitWith_check_option(self, ctx:postgreSQLParser.With_check_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_database_statement.
    def enterCreate_database_statement(self, ctx:postgreSQLParser.Create_database_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_database_statement.
    def exitCreate_database_statement(self, ctx:postgreSQLParser.Create_database_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_database_option.
    def enterCreate_database_option(self, ctx:postgreSQLParser.Create_database_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_database_option.
    def exitCreate_database_option(self, ctx:postgreSQLParser.Create_database_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_database_statement.
    def enterAlter_database_statement(self, ctx:postgreSQLParser.Alter_database_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_database_statement.
    def exitAlter_database_statement(self, ctx:postgreSQLParser.Alter_database_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_database_action.
    def enterAlter_database_action(self, ctx:postgreSQLParser.Alter_database_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_database_action.
    def exitAlter_database_action(self, ctx:postgreSQLParser.Alter_database_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alter_database_option.
    def enterAlter_database_option(self, ctx:postgreSQLParser.Alter_database_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alter_database_option.
    def exitAlter_database_option(self, ctx:postgreSQLParser.Alter_database_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_table_statement.
    def enterCreate_table_statement(self, ctx:postgreSQLParser.Create_table_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_table_statement.
    def exitCreate_table_statement(self, ctx:postgreSQLParser.Create_table_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_table_as_statement.
    def enterCreate_table_as_statement(self, ctx:postgreSQLParser.Create_table_as_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_table_as_statement.
    def exitCreate_table_as_statement(self, ctx:postgreSQLParser.Create_table_as_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#create_foreign_table_statement.
    def enterCreate_foreign_table_statement(self, ctx:postgreSQLParser.Create_foreign_table_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#create_foreign_table_statement.
    def exitCreate_foreign_table_statement(self, ctx:postgreSQLParser.Create_foreign_table_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#define_table.
    def enterDefine_table(self, ctx:postgreSQLParser.Define_tableContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#define_table.
    def exitDefine_table(self, ctx:postgreSQLParser.Define_tableContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#define_partition.
    def enterDefine_partition(self, ctx:postgreSQLParser.Define_partitionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#define_partition.
    def exitDefine_partition(self, ctx:postgreSQLParser.Define_partitionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#for_values_bound.
    def enterFor_values_bound(self, ctx:postgreSQLParser.For_values_boundContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#for_values_bound.
    def exitFor_values_bound(self, ctx:postgreSQLParser.For_values_boundContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#partition_bound_spec.
    def enterPartition_bound_spec(self, ctx:postgreSQLParser.Partition_bound_specContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#partition_bound_spec.
    def exitPartition_bound_spec(self, ctx:postgreSQLParser.Partition_bound_specContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#partition_bound_part.
    def enterPartition_bound_part(self, ctx:postgreSQLParser.Partition_bound_partContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#partition_bound_part.
    def exitPartition_bound_part(self, ctx:postgreSQLParser.Partition_bound_partContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#define_columns.
    def enterDefine_columns(self, ctx:postgreSQLParser.Define_columnsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#define_columns.
    def exitDefine_columns(self, ctx:postgreSQLParser.Define_columnsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#define_type.
    def enterDefine_type(self, ctx:postgreSQLParser.Define_typeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#define_type.
    def exitDefine_type(self, ctx:postgreSQLParser.Define_typeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#partition_by.
    def enterPartition_by(self, ctx:postgreSQLParser.Partition_byContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#partition_by.
    def exitPartition_by(self, ctx:postgreSQLParser.Partition_byContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#partition_method.
    def enterPartition_method(self, ctx:postgreSQLParser.Partition_methodContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#partition_method.
    def exitPartition_method(self, ctx:postgreSQLParser.Partition_methodContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#partition_column.
    def enterPartition_column(self, ctx:postgreSQLParser.Partition_columnContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#partition_column.
    def exitPartition_column(self, ctx:postgreSQLParser.Partition_columnContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#define_server.
    def enterDefine_server(self, ctx:postgreSQLParser.Define_serverContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#define_server.
    def exitDefine_server(self, ctx:postgreSQLParser.Define_serverContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#define_foreign_options.
    def enterDefine_foreign_options(self, ctx:postgreSQLParser.Define_foreign_optionsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#define_foreign_options.
    def exitDefine_foreign_options(self, ctx:postgreSQLParser.Define_foreign_optionsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#foreign_option.
    def enterForeign_option(self, ctx:postgreSQLParser.Foreign_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#foreign_option.
    def exitForeign_option(self, ctx:postgreSQLParser.Foreign_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#foreign_option_name.
    def enterForeign_option_name(self, ctx:postgreSQLParser.Foreign_option_nameContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#foreign_option_name.
    def exitForeign_option_name(self, ctx:postgreSQLParser.Foreign_option_nameContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#list_of_type_column_def.
    def enterList_of_type_column_def(self, ctx:postgreSQLParser.List_of_type_column_defContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#list_of_type_column_def.
    def exitList_of_type_column_def(self, ctx:postgreSQLParser.List_of_type_column_defContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_column_def.
    def enterTable_column_def(self, ctx:postgreSQLParser.Table_column_defContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_column_def.
    def exitTable_column_def(self, ctx:postgreSQLParser.Table_column_defContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_of_type_column_def.
    def enterTable_of_type_column_def(self, ctx:postgreSQLParser.Table_of_type_column_defContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_of_type_column_def.
    def exitTable_of_type_column_def(self, ctx:postgreSQLParser.Table_of_type_column_defContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_column_definition.
    def enterTable_column_definition(self, ctx:postgreSQLParser.Table_column_definitionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_column_definition.
    def exitTable_column_definition(self, ctx:postgreSQLParser.Table_column_definitionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#like_option.
    def enterLike_option(self, ctx:postgreSQLParser.Like_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#like_option.
    def exitLike_option(self, ctx:postgreSQLParser.Like_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#constraint_common.
    def enterConstraint_common(self, ctx:postgreSQLParser.Constraint_commonContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#constraint_common.
    def exitConstraint_common(self, ctx:postgreSQLParser.Constraint_commonContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#excludeconstr_body.
    def enterExcludeconstr_body(self, ctx:postgreSQLParser.Excludeconstr_bodyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#excludeconstr_body.
    def exitExcludeconstr_body(self, ctx:postgreSQLParser.Excludeconstr_bodyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#fkeyconstr_body.
    def enterFkeyconstr_body(self, ctx:postgreSQLParser.Fkeyconstr_bodyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#fkeyconstr_body.
    def exitFkeyconstr_body(self, ctx:postgreSQLParser.Fkeyconstr_bodyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#checkconstr_body.
    def enterCheckconstr_body(self, ctx:postgreSQLParser.Checkconstr_bodyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#checkconstr_body.
    def exitCheckconstr_body(self, ctx:postgreSQLParser.Checkconstr_bodyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#notnullconstr_body.
    def enterNotnullconstr_body(self, ctx:postgreSQLParser.Notnullconstr_bodyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#notnullconstr_body.
    def exitNotnullconstr_body(self, ctx:postgreSQLParser.Notnullconstr_bodyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#pkeyconstr_body.
    def enterPkeyconstr_body(self, ctx:postgreSQLParser.Pkeyconstr_bodyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#pkeyconstr_body.
    def exitPkeyconstr_body(self, ctx:postgreSQLParser.Pkeyconstr_bodyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#defconstr_body.
    def enterDefconstr_body(self, ctx:postgreSQLParser.Defconstr_bodyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#defconstr_body.
    def exitDefconstr_body(self, ctx:postgreSQLParser.Defconstr_bodyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#idconstr_body.
    def enterIdconstr_body(self, ctx:postgreSQLParser.Idconstr_bodyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#idconstr_body.
    def exitIdconstr_body(self, ctx:postgreSQLParser.Idconstr_bodyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#genconstr_body.
    def enterGenconstr_body(self, ctx:postgreSQLParser.Genconstr_bodyContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#genconstr_body.
    def exitGenconstr_body(self, ctx:postgreSQLParser.Genconstr_bodyContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#all_op.
    def enterAll_op(self, ctx:postgreSQLParser.All_opContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#all_op.
    def exitAll_op(self, ctx:postgreSQLParser.All_opContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#all_simple_op.
    def enterAll_simple_op(self, ctx:postgreSQLParser.All_simple_opContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#all_simple_op.
    def exitAll_simple_op(self, ctx:postgreSQLParser.All_simple_opContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#op_chars.
    def enterOp_chars(self, ctx:postgreSQLParser.Op_charsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#op_chars.
    def exitOp_chars(self, ctx:postgreSQLParser.Op_charsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#index_parameters.
    def enterIndex_parameters(self, ctx:postgreSQLParser.Index_parametersContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#index_parameters.
    def exitIndex_parameters(self, ctx:postgreSQLParser.Index_parametersContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#names_in_parens.
    def enterNames_in_parens(self, ctx:postgreSQLParser.Names_in_parensContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#names_in_parens.
    def exitNames_in_parens(self, ctx:postgreSQLParser.Names_in_parensContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#names_references.
    def enterNames_references(self, ctx:postgreSQLParser.Names_referencesContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#names_references.
    def exitNames_references(self, ctx:postgreSQLParser.Names_referencesContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#storage_parameter.
    def enterStorage_parameter(self, ctx:postgreSQLParser.Storage_parameterContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#storage_parameter.
    def exitStorage_parameter(self, ctx:postgreSQLParser.Storage_parameterContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#storage_parameter_option.
    def enterStorage_parameter_option(self, ctx:postgreSQLParser.Storage_parameter_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#storage_parameter_option.
    def exitStorage_parameter_option(self, ctx:postgreSQLParser.Storage_parameter_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#storage_parameter_name.
    def enterStorage_parameter_name(self, ctx:postgreSQLParser.Storage_parameter_nameContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#storage_parameter_name.
    def exitStorage_parameter_name(self, ctx:postgreSQLParser.Storage_parameter_nameContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#with_storage_parameter.
    def enterWith_storage_parameter(self, ctx:postgreSQLParser.With_storage_parameterContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#with_storage_parameter.
    def exitWith_storage_parameter(self, ctx:postgreSQLParser.With_storage_parameterContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#storage_parameter_oid.
    def enterStorage_parameter_oid(self, ctx:postgreSQLParser.Storage_parameter_oidContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#storage_parameter_oid.
    def exitStorage_parameter_oid(self, ctx:postgreSQLParser.Storage_parameter_oidContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#on_commit.
    def enterOn_commit(self, ctx:postgreSQLParser.On_commitContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#on_commit.
    def exitOn_commit(self, ctx:postgreSQLParser.On_commitContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_space.
    def enterTable_space(self, ctx:postgreSQLParser.Table_spaceContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_space.
    def exitTable_space(self, ctx:postgreSQLParser.Table_spaceContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#set_tablespace.
    def enterSet_tablespace(self, ctx:postgreSQLParser.Set_tablespaceContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#set_tablespace.
    def exitSet_tablespace(self, ctx:postgreSQLParser.Set_tablespaceContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#action.
    def enterAction(self, ctx:postgreSQLParser.ActionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#action.
    def exitAction(self, ctx:postgreSQLParser.ActionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#owner_to.
    def enterOwner_to(self, ctx:postgreSQLParser.Owner_toContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#owner_to.
    def exitOwner_to(self, ctx:postgreSQLParser.Owner_toContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#rename_to.
    def enterRename_to(self, ctx:postgreSQLParser.Rename_toContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#rename_to.
    def exitRename_to(self, ctx:postgreSQLParser.Rename_toContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#set_schema.
    def enterSet_schema(self, ctx:postgreSQLParser.Set_schemaContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#set_schema.
    def exitSet_schema(self, ctx:postgreSQLParser.Set_schemaContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_column_privilege.
    def enterTable_column_privilege(self, ctx:postgreSQLParser.Table_column_privilegeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_column_privilege.
    def exitTable_column_privilege(self, ctx:postgreSQLParser.Table_column_privilegeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#usage_select_update.
    def enterUsage_select_update(self, ctx:postgreSQLParser.Usage_select_updateContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#usage_select_update.
    def exitUsage_select_update(self, ctx:postgreSQLParser.Usage_select_updateContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#partition_by_columns.
    def enterPartition_by_columns(self, ctx:postgreSQLParser.Partition_by_columnsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#partition_by_columns.
    def exitPartition_by_columns(self, ctx:postgreSQLParser.Partition_by_columnsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#cascade_restrict.
    def enterCascade_restrict(self, ctx:postgreSQLParser.Cascade_restrictContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#cascade_restrict.
    def exitCascade_restrict(self, ctx:postgreSQLParser.Cascade_restrictContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#collate_identifier.
    def enterCollate_identifier(self, ctx:postgreSQLParser.Collate_identifierContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#collate_identifier.
    def exitCollate_identifier(self, ctx:postgreSQLParser.Collate_identifierContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#indirection_var.
    def enterIndirection_var(self, ctx:postgreSQLParser.Indirection_varContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#indirection_var.
    def exitIndirection_var(self, ctx:postgreSQLParser.Indirection_varContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#dollar_number.
    def enterDollar_number(self, ctx:postgreSQLParser.Dollar_numberContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#dollar_number.
    def exitDollar_number(self, ctx:postgreSQLParser.Dollar_numberContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#indirection_list.
    def enterIndirection_list(self, ctx:postgreSQLParser.Indirection_listContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#indirection_list.
    def exitIndirection_list(self, ctx:postgreSQLParser.Indirection_listContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#indirection.
    def enterIndirection(self, ctx:postgreSQLParser.IndirectionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#indirection.
    def exitIndirection(self, ctx:postgreSQLParser.IndirectionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_database_statement.
    def enterDrop_database_statement(self, ctx:postgreSQLParser.Drop_database_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_database_statement.
    def exitDrop_database_statement(self, ctx:postgreSQLParser.Drop_database_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_function_statement.
    def enterDrop_function_statement(self, ctx:postgreSQLParser.Drop_function_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_function_statement.
    def exitDrop_function_statement(self, ctx:postgreSQLParser.Drop_function_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_trigger_statement.
    def enterDrop_trigger_statement(self, ctx:postgreSQLParser.Drop_trigger_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_trigger_statement.
    def exitDrop_trigger_statement(self, ctx:postgreSQLParser.Drop_trigger_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_rule_statement.
    def enterDrop_rule_statement(self, ctx:postgreSQLParser.Drop_rule_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_rule_statement.
    def exitDrop_rule_statement(self, ctx:postgreSQLParser.Drop_rule_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#drop_statements.
    def enterDrop_statements(self, ctx:postgreSQLParser.Drop_statementsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#drop_statements.
    def exitDrop_statements(self, ctx:postgreSQLParser.Drop_statementsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#if_exist_names_restrict_cascade.
    def enterIf_exist_names_restrict_cascade(self, ctx:postgreSQLParser.If_exist_names_restrict_cascadeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#if_exist_names_restrict_cascade.
    def exitIf_exist_names_restrict_cascade(self, ctx:postgreSQLParser.If_exist_names_restrict_cascadeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#id_token.
    def enterId_token(self, ctx:postgreSQLParser.Id_tokenContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#id_token.
    def exitId_token(self, ctx:postgreSQLParser.Id_tokenContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#identifier.
    def enterIdentifier(self, ctx:postgreSQLParser.IdentifierContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#identifier.
    def exitIdentifier(self, ctx:postgreSQLParser.IdentifierContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#identifier_nontype.
    def enterIdentifier_nontype(self, ctx:postgreSQLParser.Identifier_nontypeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#identifier_nontype.
    def exitIdentifier_nontype(self, ctx:postgreSQLParser.Identifier_nontypeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#col_label.
    def enterCol_label(self, ctx:postgreSQLParser.Col_labelContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#col_label.
    def exitCol_label(self, ctx:postgreSQLParser.Col_labelContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#tokens_nonreserved.
    def enterTokens_nonreserved(self, ctx:postgreSQLParser.Tokens_nonreservedContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#tokens_nonreserved.
    def exitTokens_nonreserved(self, ctx:postgreSQLParser.Tokens_nonreservedContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#tokens_nonreserved_except_function_type.
    def enterTokens_nonreserved_except_function_type(self, ctx:postgreSQLParser.Tokens_nonreserved_except_function_typeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#tokens_nonreserved_except_function_type.
    def exitTokens_nonreserved_except_function_type(self, ctx:postgreSQLParser.Tokens_nonreserved_except_function_typeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#tokens_reserved_except_function_type.
    def enterTokens_reserved_except_function_type(self, ctx:postgreSQLParser.Tokens_reserved_except_function_typeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#tokens_reserved_except_function_type.
    def exitTokens_reserved_except_function_type(self, ctx:postgreSQLParser.Tokens_reserved_except_function_typeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#tokens_reserved.
    def enterTokens_reserved(self, ctx:postgreSQLParser.Tokens_reservedContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#tokens_reserved.
    def exitTokens_reserved(self, ctx:postgreSQLParser.Tokens_reservedContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#tokens_nonkeyword.
    def enterTokens_nonkeyword(self, ctx:postgreSQLParser.Tokens_nonkeywordContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#tokens_nonkeyword.
    def exitTokens_nonkeyword(self, ctx:postgreSQLParser.Tokens_nonkeywordContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#schema_qualified_name_nontype.
    def enterSchema_qualified_name_nontype(self, ctx:postgreSQLParser.Schema_qualified_name_nontypeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#schema_qualified_name_nontype.
    def exitSchema_qualified_name_nontype(self, ctx:postgreSQLParser.Schema_qualified_name_nontypeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#type_list.
    def enterType_list(self, ctx:postgreSQLParser.Type_listContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#type_list.
    def exitType_list(self, ctx:postgreSQLParser.Type_listContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#data_type.
    def enterData_type(self, ctx:postgreSQLParser.Data_typeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#data_type.
    def exitData_type(self, ctx:postgreSQLParser.Data_typeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#array_type.
    def enterArray_type(self, ctx:postgreSQLParser.Array_typeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#array_type.
    def exitArray_type(self, ctx:postgreSQLParser.Array_typeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#predefined_type.
    def enterPredefined_type(self, ctx:postgreSQLParser.Predefined_typeContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#predefined_type.
    def exitPredefined_type(self, ctx:postgreSQLParser.Predefined_typeContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#interval_field.
    def enterInterval_field(self, ctx:postgreSQLParser.Interval_fieldContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#interval_field.
    def exitInterval_field(self, ctx:postgreSQLParser.Interval_fieldContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#type_length.
    def enterType_length(self, ctx:postgreSQLParser.Type_lengthContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#type_length.
    def exitType_length(self, ctx:postgreSQLParser.Type_lengthContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#precision_param.
    def enterPrecision_param(self, ctx:postgreSQLParser.Precision_paramContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#precision_param.
    def exitPrecision_param(self, ctx:postgreSQLParser.Precision_paramContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#vex.
    def enterVex(self, ctx:postgreSQLParser.VexContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#vex.
    def exitVex(self, ctx:postgreSQLParser.VexContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#vex_b.
    def enterVex_b(self, ctx:postgreSQLParser.Vex_bContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#vex_b.
    def exitVex_b(self, ctx:postgreSQLParser.Vex_bContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#op.
    def enterOp(self, ctx:postgreSQLParser.OpContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#op.
    def exitOp(self, ctx:postgreSQLParser.OpContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#all_op_ref.
    def enterAll_op_ref(self, ctx:postgreSQLParser.All_op_refContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#all_op_ref.
    def exitAll_op_ref(self, ctx:postgreSQLParser.All_op_refContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#datetime_overlaps.
    def enterDatetime_overlaps(self, ctx:postgreSQLParser.Datetime_overlapsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#datetime_overlaps.
    def exitDatetime_overlaps(self, ctx:postgreSQLParser.Datetime_overlapsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#value_expression_primary.
    def enterValue_expression_primary(self, ctx:postgreSQLParser.Value_expression_primaryContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#value_expression_primary.
    def exitValue_expression_primary(self, ctx:postgreSQLParser.Value_expression_primaryContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#unsigned_value_specification.
    def enterUnsigned_value_specification(self, ctx:postgreSQLParser.Unsigned_value_specificationContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#unsigned_value_specification.
    def exitUnsigned_value_specification(self, ctx:postgreSQLParser.Unsigned_value_specificationContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#unsigned_numeric_literal.
    def enterUnsigned_numeric_literal(self, ctx:postgreSQLParser.Unsigned_numeric_literalContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#unsigned_numeric_literal.
    def exitUnsigned_numeric_literal(self, ctx:postgreSQLParser.Unsigned_numeric_literalContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#truth_value.
    def enterTruth_value(self, ctx:postgreSQLParser.Truth_valueContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#truth_value.
    def exitTruth_value(self, ctx:postgreSQLParser.Truth_valueContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#case_expression.
    def enterCase_expression(self, ctx:postgreSQLParser.Case_expressionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#case_expression.
    def exitCase_expression(self, ctx:postgreSQLParser.Case_expressionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#cast_specification.
    def enterCast_specification(self, ctx:postgreSQLParser.Cast_specificationContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#cast_specification.
    def exitCast_specification(self, ctx:postgreSQLParser.Cast_specificationContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_call.
    def enterFunction_call(self, ctx:postgreSQLParser.Function_callContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_call.
    def exitFunction_call(self, ctx:postgreSQLParser.Function_callContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#vex_or_named_notation.
    def enterVex_or_named_notation(self, ctx:postgreSQLParser.Vex_or_named_notationContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#vex_or_named_notation.
    def exitVex_or_named_notation(self, ctx:postgreSQLParser.Vex_or_named_notationContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#pointer.
    def enterPointer(self, ctx:postgreSQLParser.PointerContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#pointer.
    def exitPointer(self, ctx:postgreSQLParser.PointerContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_construct.
    def enterFunction_construct(self, ctx:postgreSQLParser.Function_constructContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_construct.
    def exitFunction_construct(self, ctx:postgreSQLParser.Function_constructContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#extract_function.
    def enterExtract_function(self, ctx:postgreSQLParser.Extract_functionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#extract_function.
    def exitExtract_function(self, ctx:postgreSQLParser.Extract_functionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#system_function.
    def enterSystem_function(self, ctx:postgreSQLParser.System_functionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#system_function.
    def exitSystem_function(self, ctx:postgreSQLParser.System_functionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#date_time_function.
    def enterDate_time_function(self, ctx:postgreSQLParser.Date_time_functionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#date_time_function.
    def exitDate_time_function(self, ctx:postgreSQLParser.Date_time_functionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#string_value_function.
    def enterString_value_function(self, ctx:postgreSQLParser.String_value_functionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#string_value_function.
    def exitString_value_function(self, ctx:postgreSQLParser.String_value_functionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#xml_function.
    def enterXml_function(self, ctx:postgreSQLParser.Xml_functionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#xml_function.
    def exitXml_function(self, ctx:postgreSQLParser.Xml_functionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#xml_table_column.
    def enterXml_table_column(self, ctx:postgreSQLParser.Xml_table_columnContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#xml_table_column.
    def exitXml_table_column(self, ctx:postgreSQLParser.Xml_table_columnContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#comparison_mod.
    def enterComparison_mod(self, ctx:postgreSQLParser.Comparison_modContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#comparison_mod.
    def exitComparison_mod(self, ctx:postgreSQLParser.Comparison_modContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#filter_clause.
    def enterFilter_clause(self, ctx:postgreSQLParser.Filter_clauseContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#filter_clause.
    def exitFilter_clause(self, ctx:postgreSQLParser.Filter_clauseContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#window_definition.
    def enterWindow_definition(self, ctx:postgreSQLParser.Window_definitionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#window_definition.
    def exitWindow_definition(self, ctx:postgreSQLParser.Window_definitionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#frame_clause.
    def enterFrame_clause(self, ctx:postgreSQLParser.Frame_clauseContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#frame_clause.
    def exitFrame_clause(self, ctx:postgreSQLParser.Frame_clauseContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#frame_bound.
    def enterFrame_bound(self, ctx:postgreSQLParser.Frame_boundContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#frame_bound.
    def exitFrame_bound(self, ctx:postgreSQLParser.Frame_boundContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#array_expression.
    def enterArray_expression(self, ctx:postgreSQLParser.Array_expressionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#array_expression.
    def exitArray_expression(self, ctx:postgreSQLParser.Array_expressionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#array_elements.
    def enterArray_elements(self, ctx:postgreSQLParser.Array_elementsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#array_elements.
    def exitArray_elements(self, ctx:postgreSQLParser.Array_elementsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#type_coercion.
    def enterType_coercion(self, ctx:postgreSQLParser.Type_coercionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#type_coercion.
    def exitType_coercion(self, ctx:postgreSQLParser.Type_coercionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#schema_qualified_name.
    def enterSchema_qualified_name(self, ctx:postgreSQLParser.Schema_qualified_nameContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#schema_qualified_name.
    def exitSchema_qualified_name(self, ctx:postgreSQLParser.Schema_qualified_nameContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#set_qualifier.
    def enterSet_qualifier(self, ctx:postgreSQLParser.Set_qualifierContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#set_qualifier.
    def exitSet_qualifier(self, ctx:postgreSQLParser.Set_qualifierContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#table_subquery.
    def enterTable_subquery(self, ctx:postgreSQLParser.Table_subqueryContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#table_subquery.
    def exitTable_subquery(self, ctx:postgreSQLParser.Table_subqueryContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#select_stmt.
    def enterSelect_stmt(self, ctx:postgreSQLParser.Select_stmtContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#select_stmt.
    def exitSelect_stmt(self, ctx:postgreSQLParser.Select_stmtContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#after_ops.
    def enterAfter_ops(self, ctx:postgreSQLParser.After_opsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#after_ops.
    def exitAfter_ops(self, ctx:postgreSQLParser.After_opsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#select_stmt_no_parens.
    def enterSelect_stmt_no_parens(self, ctx:postgreSQLParser.Select_stmt_no_parensContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#select_stmt_no_parens.
    def exitSelect_stmt_no_parens(self, ctx:postgreSQLParser.Select_stmt_no_parensContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#with_clause.
    def enterWith_clause(self, ctx:postgreSQLParser.With_clauseContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#with_clause.
    def exitWith_clause(self, ctx:postgreSQLParser.With_clauseContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#with_query.
    def enterWith_query(self, ctx:postgreSQLParser.With_queryContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#with_query.
    def exitWith_query(self, ctx:postgreSQLParser.With_queryContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#select_ops.
    def enterSelect_ops(self, ctx:postgreSQLParser.Select_opsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#select_ops.
    def exitSelect_ops(self, ctx:postgreSQLParser.Select_opsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#select_ops_no_parens.
    def enterSelect_ops_no_parens(self, ctx:postgreSQLParser.Select_ops_no_parensContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#select_ops_no_parens.
    def exitSelect_ops_no_parens(self, ctx:postgreSQLParser.Select_ops_no_parensContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#select_primary.
    def enterSelect_primary(self, ctx:postgreSQLParser.Select_primaryContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#select_primary.
    def exitSelect_primary(self, ctx:postgreSQLParser.Select_primaryContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#select_list.
    def enterSelect_list(self, ctx:postgreSQLParser.Select_listContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#select_list.
    def exitSelect_list(self, ctx:postgreSQLParser.Select_listContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#select_sublist.
    def enterSelect_sublist(self, ctx:postgreSQLParser.Select_sublistContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#select_sublist.
    def exitSelect_sublist(self, ctx:postgreSQLParser.Select_sublistContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#into_table.
    def enterInto_table(self, ctx:postgreSQLParser.Into_tableContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#into_table.
    def exitInto_table(self, ctx:postgreSQLParser.Into_tableContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#from_item.
    def enterFrom_item(self, ctx:postgreSQLParser.From_itemContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#from_item.
    def exitFrom_item(self, ctx:postgreSQLParser.From_itemContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#from_primary.
    def enterFrom_primary(self, ctx:postgreSQLParser.From_primaryContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#from_primary.
    def exitFrom_primary(self, ctx:postgreSQLParser.From_primaryContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#alias_clause.
    def enterAlias_clause(self, ctx:postgreSQLParser.Alias_clauseContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#alias_clause.
    def exitAlias_clause(self, ctx:postgreSQLParser.Alias_clauseContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#from_function_column_def.
    def enterFrom_function_column_def(self, ctx:postgreSQLParser.From_function_column_defContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#from_function_column_def.
    def exitFrom_function_column_def(self, ctx:postgreSQLParser.From_function_column_defContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#groupby_clause.
    def enterGroupby_clause(self, ctx:postgreSQLParser.Groupby_clauseContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#groupby_clause.
    def exitGroupby_clause(self, ctx:postgreSQLParser.Groupby_clauseContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#grouping_element_list.
    def enterGrouping_element_list(self, ctx:postgreSQLParser.Grouping_element_listContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#grouping_element_list.
    def exitGrouping_element_list(self, ctx:postgreSQLParser.Grouping_element_listContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#grouping_element.
    def enterGrouping_element(self, ctx:postgreSQLParser.Grouping_elementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#grouping_element.
    def exitGrouping_element(self, ctx:postgreSQLParser.Grouping_elementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#values_stmt.
    def enterValues_stmt(self, ctx:postgreSQLParser.Values_stmtContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#values_stmt.
    def exitValues_stmt(self, ctx:postgreSQLParser.Values_stmtContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#values_values.
    def enterValues_values(self, ctx:postgreSQLParser.Values_valuesContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#values_values.
    def exitValues_values(self, ctx:postgreSQLParser.Values_valuesContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#orderby_clause.
    def enterOrderby_clause(self, ctx:postgreSQLParser.Orderby_clauseContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#orderby_clause.
    def exitOrderby_clause(self, ctx:postgreSQLParser.Orderby_clauseContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#sort_specifier.
    def enterSort_specifier(self, ctx:postgreSQLParser.Sort_specifierContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#sort_specifier.
    def exitSort_specifier(self, ctx:postgreSQLParser.Sort_specifierContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#order_specification.
    def enterOrder_specification(self, ctx:postgreSQLParser.Order_specificationContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#order_specification.
    def exitOrder_specification(self, ctx:postgreSQLParser.Order_specificationContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#null_ordering.
    def enterNull_ordering(self, ctx:postgreSQLParser.Null_orderingContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#null_ordering.
    def exitNull_ordering(self, ctx:postgreSQLParser.Null_orderingContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#insert_stmt_for_psql.
    def enterInsert_stmt_for_psql(self, ctx:postgreSQLParser.Insert_stmt_for_psqlContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#insert_stmt_for_psql.
    def exitInsert_stmt_for_psql(self, ctx:postgreSQLParser.Insert_stmt_for_psqlContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#insert_columns.
    def enterInsert_columns(self, ctx:postgreSQLParser.Insert_columnsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#insert_columns.
    def exitInsert_columns(self, ctx:postgreSQLParser.Insert_columnsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#indirection_identifier.
    def enterIndirection_identifier(self, ctx:postgreSQLParser.Indirection_identifierContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#indirection_identifier.
    def exitIndirection_identifier(self, ctx:postgreSQLParser.Indirection_identifierContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#conflict_object.
    def enterConflict_object(self, ctx:postgreSQLParser.Conflict_objectContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#conflict_object.
    def exitConflict_object(self, ctx:postgreSQLParser.Conflict_objectContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#conflict_action.
    def enterConflict_action(self, ctx:postgreSQLParser.Conflict_actionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#conflict_action.
    def exitConflict_action(self, ctx:postgreSQLParser.Conflict_actionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#delete_stmt_for_psql.
    def enterDelete_stmt_for_psql(self, ctx:postgreSQLParser.Delete_stmt_for_psqlContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#delete_stmt_for_psql.
    def exitDelete_stmt_for_psql(self, ctx:postgreSQLParser.Delete_stmt_for_psqlContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#update_stmt_for_psql.
    def enterUpdate_stmt_for_psql(self, ctx:postgreSQLParser.Update_stmt_for_psqlContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#update_stmt_for_psql.
    def exitUpdate_stmt_for_psql(self, ctx:postgreSQLParser.Update_stmt_for_psqlContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#update_set.
    def enterUpdate_set(self, ctx:postgreSQLParser.Update_setContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#update_set.
    def exitUpdate_set(self, ctx:postgreSQLParser.Update_setContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#notify_stmt.
    def enterNotify_stmt(self, ctx:postgreSQLParser.Notify_stmtContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#notify_stmt.
    def exitNotify_stmt(self, ctx:postgreSQLParser.Notify_stmtContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#truncate_stmt.
    def enterTruncate_stmt(self, ctx:postgreSQLParser.Truncate_stmtContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#truncate_stmt.
    def exitTruncate_stmt(self, ctx:postgreSQLParser.Truncate_stmtContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#identifier_list.
    def enterIdentifier_list(self, ctx:postgreSQLParser.Identifier_listContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#identifier_list.
    def exitIdentifier_list(self, ctx:postgreSQLParser.Identifier_listContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#anonymous_block.
    def enterAnonymous_block(self, ctx:postgreSQLParser.Anonymous_blockContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#anonymous_block.
    def exitAnonymous_block(self, ctx:postgreSQLParser.Anonymous_blockContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#comp_options.
    def enterComp_options(self, ctx:postgreSQLParser.Comp_optionsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#comp_options.
    def exitComp_options(self, ctx:postgreSQLParser.Comp_optionsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_block.
    def enterFunction_block(self, ctx:postgreSQLParser.Function_blockContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_block.
    def exitFunction_block(self, ctx:postgreSQLParser.Function_blockContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#start_label.
    def enterStart_label(self, ctx:postgreSQLParser.Start_labelContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#start_label.
    def exitStart_label(self, ctx:postgreSQLParser.Start_labelContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#declarations.
    def enterDeclarations(self, ctx:postgreSQLParser.DeclarationsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#declarations.
    def exitDeclarations(self, ctx:postgreSQLParser.DeclarationsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#declaration.
    def enterDeclaration(self, ctx:postgreSQLParser.DeclarationContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#declaration.
    def exitDeclaration(self, ctx:postgreSQLParser.DeclarationContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#type_declaration.
    def enterType_declaration(self, ctx:postgreSQLParser.Type_declarationContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#type_declaration.
    def exitType_declaration(self, ctx:postgreSQLParser.Type_declarationContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#arguments_list.
    def enterArguments_list(self, ctx:postgreSQLParser.Arguments_listContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#arguments_list.
    def exitArguments_list(self, ctx:postgreSQLParser.Arguments_listContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#data_type_dec.
    def enterData_type_dec(self, ctx:postgreSQLParser.Data_type_decContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#data_type_dec.
    def exitData_type_dec(self, ctx:postgreSQLParser.Data_type_decContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#exception_statement.
    def enterException_statement(self, ctx:postgreSQLParser.Exception_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#exception_statement.
    def exitException_statement(self, ctx:postgreSQLParser.Exception_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_statements.
    def enterFunction_statements(self, ctx:postgreSQLParser.Function_statementsContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_statements.
    def exitFunction_statements(self, ctx:postgreSQLParser.Function_statementsContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#function_statement.
    def enterFunction_statement(self, ctx:postgreSQLParser.Function_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#function_statement.
    def exitFunction_statement(self, ctx:postgreSQLParser.Function_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#base_statement.
    def enterBase_statement(self, ctx:postgreSQLParser.Base_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#base_statement.
    def exitBase_statement(self, ctx:postgreSQLParser.Base_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#var.
    def enterVar(self, ctx:postgreSQLParser.VarContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#var.
    def exitVar(self, ctx:postgreSQLParser.VarContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#diagnostic_option.
    def enterDiagnostic_option(self, ctx:postgreSQLParser.Diagnostic_optionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#diagnostic_option.
    def exitDiagnostic_option(self, ctx:postgreSQLParser.Diagnostic_optionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#perform_stmt.
    def enterPerform_stmt(self, ctx:postgreSQLParser.Perform_stmtContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#perform_stmt.
    def exitPerform_stmt(self, ctx:postgreSQLParser.Perform_stmtContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#assign_stmt.
    def enterAssign_stmt(self, ctx:postgreSQLParser.Assign_stmtContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#assign_stmt.
    def exitAssign_stmt(self, ctx:postgreSQLParser.Assign_stmtContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#execute_stmt.
    def enterExecute_stmt(self, ctx:postgreSQLParser.Execute_stmtContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#execute_stmt.
    def exitExecute_stmt(self, ctx:postgreSQLParser.Execute_stmtContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#control_statement.
    def enterControl_statement(self, ctx:postgreSQLParser.Control_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#control_statement.
    def exitControl_statement(self, ctx:postgreSQLParser.Control_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#cursor_statement.
    def enterCursor_statement(self, ctx:postgreSQLParser.Cursor_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#cursor_statement.
    def exitCursor_statement(self, ctx:postgreSQLParser.Cursor_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#option.
    def enterOption(self, ctx:postgreSQLParser.OptionContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#option.
    def exitOption(self, ctx:postgreSQLParser.OptionContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#transaction_statement.
    def enterTransaction_statement(self, ctx:postgreSQLParser.Transaction_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#transaction_statement.
    def exitTransaction_statement(self, ctx:postgreSQLParser.Transaction_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#message_statement.
    def enterMessage_statement(self, ctx:postgreSQLParser.Message_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#message_statement.
    def exitMessage_statement(self, ctx:postgreSQLParser.Message_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#log_level.
    def enterLog_level(self, ctx:postgreSQLParser.Log_levelContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#log_level.
    def exitLog_level(self, ctx:postgreSQLParser.Log_levelContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#raise_using.
    def enterRaise_using(self, ctx:postgreSQLParser.Raise_usingContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#raise_using.
    def exitRaise_using(self, ctx:postgreSQLParser.Raise_usingContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#raise_param.
    def enterRaise_param(self, ctx:postgreSQLParser.Raise_paramContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#raise_param.
    def exitRaise_param(self, ctx:postgreSQLParser.Raise_paramContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#return_stmt.
    def enterReturn_stmt(self, ctx:postgreSQLParser.Return_stmtContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#return_stmt.
    def exitReturn_stmt(self, ctx:postgreSQLParser.Return_stmtContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#loop_statement.
    def enterLoop_statement(self, ctx:postgreSQLParser.Loop_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#loop_statement.
    def exitLoop_statement(self, ctx:postgreSQLParser.Loop_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#loop_start.
    def enterLoop_start(self, ctx:postgreSQLParser.Loop_startContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#loop_start.
    def exitLoop_start(self, ctx:postgreSQLParser.Loop_startContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#using_vex.
    def enterUsing_vex(self, ctx:postgreSQLParser.Using_vexContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#using_vex.
    def exitUsing_vex(self, ctx:postgreSQLParser.Using_vexContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#if_statement.
    def enterIf_statement(self, ctx:postgreSQLParser.If_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#if_statement.
    def exitIf_statement(self, ctx:postgreSQLParser.If_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#case_statement.
    def enterCase_statement(self, ctx:postgreSQLParser.Case_statementContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#case_statement.
    def exitCase_statement(self, ctx:postgreSQLParser.Case_statementContext):
        pass


    # Enter a parse tree produced by postgreSQLParser#plpgsql_query.
    def enterPlpgsql_query(self, ctx:postgreSQLParser.Plpgsql_queryContext):
        pass

    # Exit a parse tree produced by postgreSQLParser#plpgsql_query.
    def exitPlpgsql_query(self, ctx:postgreSQLParser.Plpgsql_queryContext):
        pass



del postgreSQLParser