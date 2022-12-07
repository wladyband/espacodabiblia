import {
  Column,
  CreateDateColumn,
  Entity,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from 'typeorm';

@Entity('questions')
class Question {
  @PrimaryGeneratedColumn('uuid')
  codigo: string;

  @Column()
  question_details: string;

  @Column()
  question_title: string;

  @Column('int')
  option_a: number;

  @Column('int')
  option_b: number;

  @Column('int')
  option_c: number;

  @Column('int')
  option_d: number;

  @Column('int')
  option_e: number;

  @Column()
  answer_details: string;

  @Column('decimal')
  question_status: number;

  @Column('decimal')
  user_status: number;

  @CreateDateColumn()
  created_at: Date;

  @UpdateDateColumn()
  updated_at: Date;
}

export default Question;
