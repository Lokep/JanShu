import { Controller, Get, Post, Body, Query, Put } from '@nestjs/common';
import { ApiUseTags, ApiOperation, ApiModelProperty } from '@nestjs/swagger';
//该controller目前只用来展示swagger用法 

// 数据传输对象DTO
class CreatePostDto {
  // 模型的属性
  @ApiModelProperty({ description:'帖子标题'})
  title: string
  @ApiModelProperty({ description:'帖子内容'})
  content: string
}


@Controller('users')
@ApiUseTags('默认')
export class UsersController {
  @Get()
  @ApiOperation({ title:'用户首页' })
  index() {
    return 'user'
  }

  @Post()
  @ApiOperation({title:'创建'})
  create(@Body() createPostDto:CreatePostDto) {

    return {
      success:true,
      code:200,
      result:createPostDto
    }
  }

  @Get(':id')
  @ApiOperation({title:'详情'})
  detail(@Query() id){
    return {
      id:1,
      title:'',
      content:''
    }
  }

  @Put('id')
  @ApiOperation({title:'编辑'})
  update(@Query() id: string) {
    return {
      success:true
    }
  }

}
