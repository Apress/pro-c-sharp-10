namespace AutoLot.Mvc.TagHelpers;

public class ItemDeleteTagHelper : ItemLinkTagHelperBase
{
    public ItemDeleteTagHelper(IActionContextAccessor contextAccessor, IUrlHelperFactory urlHelperFactory) : base(contextAccessor, urlHelperFactory)
    {
        ActionName = nameof(CarsController.DeleteAsync).RemoveAsyncSuffix();
    }

    public override void Process(TagHelperContext context, TagHelperOutput output)
    {
        //<a asp-action="Delete" asp-route-id="@item.Id" class="text-danger">Delete <i class="fas fa-trash"></i></a>
        BuildContent(output,"text-danger","Delete","trash");
    }
}