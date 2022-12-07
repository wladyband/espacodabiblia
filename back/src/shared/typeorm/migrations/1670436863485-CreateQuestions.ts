import {MigrationInterface, QueryRunner, Table} from "typeorm";

export class CreateQuestions1670436863485 implements MigrationInterface {

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.createTable(
      new Table({
        name: 'questions',
        columns: [
          {
            name: 'codigo',
            type: 'uuid',
            isPrimary: true,
            generationStrategy: 'uuid',
            default: 'uuid_generate_v4()',
          },
          {
            name: 'question_details',
            type: 'varchar',
          },
          {
            name: 'question_title',
            type: 'varchar',
          },
          {
            name: 'option_a',
            type: 'int',
          },
          {
            name: 'option_b',
            type: 'int',
          },
          {
            name: 'option_c',
            type: 'int',
          },
          {
            name: 'option_d',
            type: 'int',
          },
          {
            name: 'option_e',
            type: 'int',
          },
          {
            name: 'answer_details',
            type: 'varchar',
          },
          {
            name: 'question_status',
            type: 'int',
          },
          {
            name: 'user_status',
            type: 'int',
          },
        {
            name: 'created_at',
            type: 'timestamp with time zone',
            default: 'now()',
          },
          {
            name: 'updated_at',
            type: 'timestamp with time zone',
            default: 'now()',
          },
        ],
      }),
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.dropTable('questions');
  }
}
