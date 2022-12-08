import { Request, Response } from 'express';
import CreateQuestionService from '../services/CreateQuestionService';
import DeleteQuestionService from '../services/DeleteQuestionService';
import ListQuestionService from '../services/ListQuestionService';
import ShowQuestionService from '../services/ShowQuestionService';
import UpdateQuestionService from '../services/UpdateQuestionService';

export default class QuestionsController {
  public async index(request: Request, response: Response): Promise<Response> {
    const listQuestions = new ListQuestionService();

    const questions = await listQuestions.execute();

    return response.json(questions);
  }

  public async show(request: Request, response: Response): Promise<Response> {
    const { codigo } = request.params;

    const showQuestion = new ShowQuestionService();

    const question = await showQuestion.execute({ codigo });

    return response.json(question);
  }

  public async create(request: Request, response: Response): Promise<Response> {
    const {
      question_details,
      question_title,
      option_a,
      option_b,
      option_c,
      option_d,
      option_e,
      answer_details,
      question_status,
      user_status,
    } = request.body;

    const createQuestion = new CreateQuestionService();

    const question = await createQuestion.execute({
      question_details,
      question_title,
      option_a,
      option_b,
      option_c,
      option_d,
      option_e,
      answer_details,
      question_status,
      user_status,
    });

    return response.json(question);
  }

  public async update(request: Request, response: Response): Promise<Response> {
    const {
      question_details,
      question_title,
      option_a,
      option_b,
      option_c,
      option_d,
      option_e,
      answer_details,
      question_status,
      user_status,
    } = request.body;

    const { codigo } = request.params;

    const updateQuestion = new UpdateQuestionService();

    const question = await updateQuestion.execute({
      codigo,
      question_details,
      question_title,
      option_a,
      option_b,
      option_c,
      option_d,
      option_e,
      answer_details,
      question_status,
      user_status,
    });

    return response.json(question);
  }

  public async delete(request: Request, response: Response): Promise<Response> {
    const { codigo } = request.params;

    const deleteQuestion = new DeleteQuestionService();

    await deleteQuestion.execute({ codigo });

    return response.json([]);
  }
}
